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
    case errorConditionOne
    case errorConditionTwo
    case errorConditionThree
}

print("== Representing and Throwing Errors ==")

//Uncomment the following line of code if you want to execute it.
//throw ErrorGroup.errorConditionOne

//MARK: - Handling Errors

/*
 When an error is thrown, there must be a way of handling it.
 In Swift, there are four ways to handle errors:
 
 1) Propagating Erros Using Throwing Functions
 2) Using Do-Catch statement
 3) Converting Errors to Optional Values
 4) Disabling Error Propagation
 */
