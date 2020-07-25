//CLOSURES
//Author: Andrés López Esquivel

//EXAMPLE ONE
print("EXAMPLE ONE")

func calculator(a : Int, b : Int, function : (Int, Int) -> Int) -> Int
{
    return function(a, b)
}

func add(num1 : Int, num2 : Int) -> Int
{
    return num1 + num2
}

let resultOne = calculator(a: 1, b: 2,function: add)

print("resultOne : \(resultOne)")

let resultTwo = calculator(a: 1, b: 2, function: {(a : Int, b : Int) -> Int in return a + b})

print("resultTwo : \(resultTwo)")

let resultThree = calculator(a: 1, b: 2, function: {(a,b) in a + b})

print("resultThree : \(resultThree)")

let resultFour = calculator(a: 1, b: 2, function: {$0 + $1})

print("resultFour : \(resultFour)")

//EXAMPLE TWO

print("EXAMPLE TWO")

let originalArray = Array(1...5)

let newArray = originalArray.map({$0 * 2})

print("orginalArray : \(originalArray)")

print("newArray : \(newArray)")
