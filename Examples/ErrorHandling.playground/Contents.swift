//ERROR HANDLING
//Author: Andrés López Esquivel

//Error Handling: Process of responding to and recovering from error conditions in programmes.

// MARK: - Representing and Throwing Errors

/*
 1) Errors in Swift are values of types that conform to the Error protocol.
 This protocol enables a type to be used for error handling.
 
 2) Enumerations are useful for modeling a group of related error conditions.
 Remember, the enum needs to implement the Error protocol.
 
 3) If you want to throw an error, use the throw statement to do it. Throwing an error
 indicates that there's something wrong and the execution needs to be stopped.
 */

enum ErrorGroup : Error
{
    case NumberOneIsMissing
    case NumberTwoIsMissing
    case NumbersAreNotPositiveValues
    case IsNotInteger
}

print("== Representing and Throwing Errors ==")

//Uncomment the following line of code if you want to execute it.
//throw ErrorGroup.errorConditionOne

//MARK: - Handling Errors

/*
 When an error is thrown, there must be a way of handling it.
 In Swift, there are four ways to handle errors:
 
 1) Propagating Errors Using Throwing Functions
 2) Using Do-Catch statement
 3) Converting Errors to Optional Values
 4) Disabling Error Propagation
 */

print("== Handling Erros ==")

//MARK:- Propagating Errors Using Throwing Functions

/*
 A function is recognized as a Throwing Function if it has the
 throws keyword after its parameters and before its return type.
 
 For example.
 
 func funcOne() throws -> Int
 
 A Throwing Function propagates errors that happen inside of it.
 It is important to mention that Throwing Functions are the
 only ones that can propagate errors, otherwise, with
 a nonthrowing function, the errors need to be handled inside the
 function.
 */

class ProofClass
{
    func proofMethod(a : Int?, b : Int?) throws -> Int
    {
        guard let num1 = a else
        {
            throw ErrorGroup.NumberOneIsMissing
        }
        
        guard let num2 = b else
        {
            throw ErrorGroup.NumberTwoIsMissing
        }
        
        guard num1 >= 0 && num2 >= 0 else
        {
            throw ErrorGroup.NumbersAreNotPositiveValues
        }
        
        return num1 + num2
    }
}

let proofClass = ProofClass()
//Uncomment the following line of code if you want to execute it.
//let result1 = try proofClass.proofMethod(a: nil, b: nil)
let result2 = try proofClass.proofMethod(a: 1, b: 2)

print("* Propagating Errors Using Throwing Functions *")
print("result2 = \(result2)")

// MARK: - Handling Errors Using Do-Catch Statements

//Do-Catch Statements are used to handle errors occurred in a block of code.

print("* Handling Errors Using Do-Catch Statements *")

//First Example
do
{
    let result = try proofClass.proofMethod(a: 1, b: -2)
    print("1) Result: \(result)")
}
catch ErrorGroup.NumberOneIsMissing
{
    print("There's not a first value to execute the operation.")
}
catch ErrorGroup.NumberTwoIsMissing
{
    print("There's not a second value to execute the operation.")
}
catch ErrorGroup.NumbersAreNotPositiveValues
{
    print("Either the first value or the second value is not positive")
}
catch
{
    print("An unexpected error happened")
    print("Error: \(error)")
}

//Second Example
do
{
    let result = try proofClass.proofMethod(a: nil, b: nil)
    print("2) Result: \(result)")
}
catch is ErrorGroup
{
    print("An error from ErrorGroup happened")
}
catch
{
    print("An unexpected error happened")
    print("Error: \(error)")
}

//Third Example

func f<T>(valueOne a : T, valueTwo b : T) throws -> Int
{
    var result : Int = 0
    
    if a is Int && b is Int
    {
        let numOne = a as! Int
        let numTwo = b as! Int
        
        result = try proofClass.proofMethod(a: numOne, b: numTwo)
    }
    else
    {
        throw ErrorGroup.NumbersAreNotPositiveValues
    }
    
    return result
}

do
{
    try print("3) ", f(valueOne: 1, valueTwo: 2))
}
catch
{
    print("Error Ocurred: \(error)")
}
