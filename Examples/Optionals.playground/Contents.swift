//==== FORCE UNWRAPPING ====

//Declare the box
var numberOne : Int? = nil

//Introduce something into the box
numberOne = 120

//Extract what is inside the box
//Warning: if there's nothing in the box, the program will crash
print("1) Value of numberOne: \(numberOne!) \n")


//==== OPTIONAL BINDING ====
//it's a clever way to extract the element hosted in the box

var numberTwo : Int?

numberTwo = nil

if let auxNumberTwo = numberTwo
{
    print("2) The value of numberTwo is: \(auxNumberTwo)\n")
}
else
{
    print("2) numberTwo is empty\n")
}

//==== OPTIONAL CHAINING ====

//FIRST EXAMPLE
func selectName(_ listNumber : Int) -> String?
{
    var nameSelected : String?
    
    switch listNumber
    {
        case 1: nameSelected = "Andrés"
        case 2: nameSelected = "Alejandro"
        case 3: nameSelected = "Ruth"
        default: nameSelected = nil
    }
    
    return nameSelected
}

//Run everything after the question mark (?) only if the part before the (?) has a value
let name = selectName(5)?.uppercased()

if let auxName = name
{
    print("3) Name selected: \(auxName)\n")
}
else
{
    print("3) There's no name\n")
}

//SECOND EXAMPLE
class Car
{
    var wheels : Wheels?
}

class Wheels
{
    var numberOfWheels : Int = 1
}

let car = Car()

if let numberOfWheels = car.wheels?.numberOfWheels
{
    print("4) The number of wheels is: \(numberOfWheels)\n")
}
else
{
    print("4) Unable to retrieve the number of wheels\n")
}

//THIRD EXAMPLE

struct MyOptional
{
    var myFirstProperty : Int = 1234
    var mySecondProperty : String? = nil
}

var myOptionalOne : MyOptional? = nil

//If myOptional is not a nil, continue with myFirstProperty
print("5) \(myOptionalOne?.myFirstProperty ?? 0)\n")

var myOptionalTwo : MyOptional? = MyOptional()

//if myOptionalTwo is not a nil, continue with mySecondProperty; if mySecondProperty is not a nil,
//continue with uppercased()
print("5.1) \(myOptionalTwo?.mySecondProperty?.uppercased() ?? "Something is nil" )\n")

//NIL COALESCING OPERATOR

var stringValueOne : String? = nil

var stringValueTwo : String = stringValueOne ?? "If stringValueOne contains a nil value, then I'm selected"

print("6) Value of stringValueTwo: \(stringValueTwo)")
