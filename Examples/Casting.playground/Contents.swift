class ClassOne
{
    var property : String
    
    init(property : String)
    {
        self.property = property
    }
}

class ClassTwo : ClassOne
{
    func methodClassTwo()
    {
        print("Hey! I'm from ClassTwo")
    }
}

class ClassThree : ClassOne
{
    func methodClassThree()
    {
        print("Hey! I'm from ClassThree")
    }
}

var classOne = ClassOne(property: "classOne")
var classTwo = ClassTwo(property: "classTwo")
var classThree = ClassThree(property: "classThree")

var classArray = [classOne, classTwo, classThree]

//DOWN CASTING WITH as!
var classTwoDownCasting = classArray[1] as! ClassTwo
classTwoDownCasting.methodClassTwo()

//DOWN CASTING WITH as?

if let classThreeCasting = classArray[1] as? ClassThree
{
    classThreeCasting.methodClassThree()
}

//UP CASTING with as

var classOneCasting = classTwo as ClassOne
