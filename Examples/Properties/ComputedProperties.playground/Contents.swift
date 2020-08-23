import Foundation

//Computed Property : Its value is calculated from other values

var width : Float = 2.5
var height : Float = 2.5
var area = width * height
let areaPerBucket : Float = 1.5

var bucketsOfPaint : Int
{
    get
    {
        let numberOfBuckets = area / areaPerBucket
        
        return Int(ceilf(numberOfBuckets))
    }
    
    set
    {
        area = Float(newValue) * areaPerBucket
    }
}

print(bucketsOfPaint)

bucketsOfPaint = 10

print(area)
