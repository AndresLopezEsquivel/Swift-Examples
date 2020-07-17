//GENERICS

/*
 Generics let us to write reusable functions and types
 that can work with any type according to the
 requirements that we, as programmers, define.
 */

//MARK: - Generic Functions

print("== Generic Functions ==")

print("# Swap Function #")

func swapTwoValues<T>(valueOne a : inout T, valueTwo b : inout T)
{
    let auxValue = a
    a = b
    b = auxValue
}

print("* Example with Int types *")

var intOne : Int = 1
var intTwo : Int = 2

print("Value of intOne before swapping: \(intOne)")
print("Value of intTwo before swapping: \(intTwo)")

swapTwoValues(valueOne: &intOne, valueTwo: &intTwo)

print("Value of intOne after swapping: \(intOne)")
print("Value of intTwo after swapping: \(intTwo)")

print("* Example with String types *")

var stringOne : String = "Element One"
var stringTwo : String = "Element Two"

print("Value of stringOne before swapping: \(stringOne)")
print("Value of stringTwo before swapping: \(stringTwo)")

swapTwoValues(valueOne: &stringOne, valueTwo: &stringTwo)

print("Value of stringOne after swapping: \(stringOne)")
print("Value of stringTwo after swapping: \(stringTwo)")

