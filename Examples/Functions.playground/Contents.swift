//FUNCTIONS

//MARK: - In-Out Parameters

/*
 By default, function parameters are constants and hence, their values
 cannot be changed within the body of the function.
 
 However, a function can modify the value of its parameters and keep
 those changes after the function call has ended only if those
 parameters are defined as In-Out parameters.
 */

//Note: The function parameters need to be variables.

print("== In-Out Parameters ==")

func swapIntegers(IntegerOne a : inout Int, IntegerTwo b : inout Int)
{
    let auxVar = a
    a = b
    b = auxVar
}

var IntOne = 1
var IntTwo = 2

print("The original value of IntOne is \(IntOne)")
print("The original value of IntTwo is \(IntTwo)")

swapIntegers(IntegerOne: &IntOne, IntegerTwo: &IntTwo)

print("The value of IntOne after swapping is \(IntOne)")
print("The value of IntTwo after swapping is \(IntTwo)")
