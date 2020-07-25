//PROTOCOLS
//Author: Andrés López Esquivel

//Structs and classes can adopt (implement) protocol
//With protocols you have to implement the requirements stablished by the protocol

protocol protocolOne
{
    func functionOne()
}

protocol protocolTwo
{
    func functionTwo()
}

struct structOne : protocolOne, protocolTwo
{
    func functionOne() {
        print("functionOne from protocolOne in structOne")
    }
    
    func functionTwo() {
        print("functionTwo from protocolTwo in structOne")
    }
    
}

class classOne : protocolOne, protocolTwo
{
    func functionOne() {
        print("functionOne from protocolOne in classOne")
    }
    
    func functionTwo() {
        print("functionTwo from protocolTwo in classOne")
    }
}

let struct_one = structOne()
let class_one = classOne()

struct_one.functionOne()
struct_one.functionTwo()

class_one.functionOne()
class_one.functionTwo()
