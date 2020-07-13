//USER DEFAULTS

import UIKit

//User Defaults is not a database, so don't treat it like so

//First Example

let defaults = UserDefaults.standard

let myString : String = "Any String"
let myInt : Int = 10
let myDouble : Double = 20.0
let myBoolean : Bool = true
let myArray : [String] = ["firstElement", "secondElement", "thirdElement"]

defaults.set(myString, forKey: "MyString")
defaults.set(myInt, forKey: "MyInt")
defaults.set(myDouble, forKey: "MyDouble")
defaults.set(myBoolean, forKey: "MyBoolean")
defaults.set(myArray, forKey: "MyArray")

let myString2 = defaults.object(forKey: "MyString") as! String
let myInt2 = defaults.integer(forKey: "MyInt")
let myDouble2 = defaults.double(forKey: "MyDouble")
let myBoolean2 = defaults.bool(forKey: "MyBoolean")
let myArray2 = defaults.array(forKey: "MyArray") as! [String]

//Second Example

let anyArray : [String : Any] = ["KeyOne" : "Guten Morgen!", "KeyTwo" : 10, "KeyThree" : false]
defaults.setValuesForKeys(anyArray)

let keyOne = defaults.object(forKey: "KeyOne") as! String
let keyTwo = defaults.integer(forKey: "KeyTwo")
let keyThree = defaults.bool(forKey: "KeyThree")

