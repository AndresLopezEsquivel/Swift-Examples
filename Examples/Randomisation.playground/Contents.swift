//RANDOMISATION
//Author: Andrés López Esquivel

var elementsGroupOne = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "a", "e", "i", "o", "u"]

var generatedPassword : String = ""

var i : Int = 0

while i <= 5
{
    generatedPassword = generatedPassword + elementsGroupOne.randomElement()!
    
    i += 1
}

print("First generated password: \(generatedPassword)")


var elementsGroupTwo = ["a", "b", "c", "d", "e"]

var newPassword = elementsGroupTwo.shuffled()

print("Second generated password: \(newPassword)")
