//TYPE CASTING

//MARK:-Defining a Class Hierarchy for Type Casting

class Vehicle
{
    let name : String
    
    init(name : String)
    {
        self.name = name
    }
}

class Car : Vehicle
{
    let numberOfDoors : Int
    
    init(numberOfDoors : Int, name : String)
    {
        self.numberOfDoors = numberOfDoors
        super.init(name: name)
    }
    
}

class Motorcycle : Vehicle
{
    let isItHaveContainer : Bool
    
    init(isItHaveContainer : Bool, name : String)
    {
        self.isItHaveContainer = isItHaveContainer
        super.init(name: name)
    }
}

/*
 Creating an array named vehicles which contains
 Car and Motorcyle instances.
 */

let vehicles =
[
    Car(numberOfDoors: 2, name: "Chevy"),
    Car(numberOfDoors: 4, name: "Avanza"),
    Car(numberOfDoors: 2, name: "Mini"),
    Motorcycle(isItHaveContainer: false, name: "R 1250 S"),
    Motorcycle(isItHaveContainer: false, name: "S 1000 RR")
]
//MARK: - Checking Type

print("== CHECKING TYPE ==")

if vehicles is [Vehicle]
{
    print("Each element in vehicles arrays is of type Vehicle")
}

var carsCounter : Int = 0
var motorcyclesCounter : Int = 0

for vehicle in vehicles
{
    if vehicle is Car
    {
        carsCounter += 1
    }
    else if vehicle is Motorcycle
    {
        motorcyclesCounter += 1
    }
}

print("There are \(vehicles.count) vehicles in vehicles array")
print("\(carsCounter) of them are of type Car")
print("\(motorcyclesCounter) of them are of type Motorcycle")

//MARK:-Down Casting

//Use as? when you are not sure if an instance can be treated like a certain class type

print("== DOWN CASTING ==")

if let vehicleAsMotorcycle = vehicles[1] as? Motorcycle
{
    print("\(vehicleAsMotorcycle.name) can be treated as a Motorcycle")
}
else
{
    print("\(vehicles[1].name) cannot be treated as a Motorcycle")
}

if let vehicleAsCar = vehicles[1] as? Car
{
    print("\(vehicleAsCar.name) can be treated as a Car")
}
else
{
    print("\(vehicles[1].name) cannot be treated as a Car")
}

//Use as! when you are sure that an instance can be treated like a certain class type

var carOne = vehicles[0] as! Car
var motorcycleTwo = vehicles[4] as! Motorcycle

if carOne is Car
{
    print("\(carOne.name) now can be treated like a Car")
}

if motorcycleTwo is Motorcycle
{
    print("\(motorcycleTwo.name) now can be treated like a Motorcycle")
}
