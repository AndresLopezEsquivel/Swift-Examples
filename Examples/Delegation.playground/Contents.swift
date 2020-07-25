//DELEGATION DESIGN PATTERN
//Author: Andrés López Esquivel

/*
 A class delegates one o more of its reponsabilities to
 other classes. This classes have to implement the protocol
 stablished by the superior class.
 */

struct Cookie
{
    var size : Int?
    var hasChocolateChips : Bool?
}

protocol BakeryDelegate
{
    func cookieWasMade(cookie : Cookie)
    func setNumberOfChocolateChips() -> Int
    func setChocolateChips() -> Bool
}

class Bakery
{
    var delegate : BakeryDelegate?
    
    func makeCookie()
    {
        var cookie = Cookie()
        
        cookie.size = delegate?.setNumberOfChocolateChips()
        cookie.hasChocolateChips = delegate?.setChocolateChips()
        
        delegate?.cookieWasMade(cookie: cookie)
    }
}

class DeliverySystem : BakeryDelegate
{
    func setChocolateChips() -> Bool
    {
        return true
    }
    
    func cookieWasMade(cookie : Cookie)
    {
        print("¡COOKIE DELIVERED!")
        print("Size : \(cookie.size!)")
        print("Has chocolate chips: \(cookie.hasChocolateChips!)")
    }
    
    func setNumberOfChocolateChips() -> Int
    {
        return 12
    }
    
}

//=============

let deliverySystem = DeliverySystem()
let bakery = Bakery()

bakery.delegate = deliverySystem

bakery.makeCookie()
