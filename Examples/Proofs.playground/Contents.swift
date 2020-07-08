let x = 6
var xArray = [0,1,2,5,7]
var yArray = [5,7,9,15,19]
var numerator = xArray.map(){x - $0}

func arrayProduct(array a : [Int]) -> Float
{
    var product : Float = 1
    
    for i in a { product = product * Float(i) }
    
    return product
    
}

func fractionFunction(iteration i : Int, array a : [Int]) -> Float
{
    var result : Float = 0
    var arrayOne = a
    var arrayTwo = xArray.map(){xArray[i] - $0}
    
    arrayOne.remove(at: i)
    arrayTwo.remove(at: i)
    
    let numeratorProduct = arrayProduct(array: arrayOne)
    let denominatorProduct = arrayProduct(array: arrayTwo)
    
    result = numeratorProduct / denominatorProduct
    result = result * Float(yArray[i])
    
    return result
}

var finalResult : Float = 0

for i in 0 ... yArray.count - 1
{
    finalResult = finalResult + fractionFunction(iteration: i, array: numerator)
}

print("Final Result : \(finalResult)")
