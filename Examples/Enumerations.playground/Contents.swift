//ENUMERATIONS

//MARK: - Enumeration Syntax

//Die Farben
enum Farben
{
    case blau
    case grau
    case weiß
    case schwarz
    case lila
    case rosa
    case rot
    case orange
}

var lieblingsfarbe1 : Farben = Farben.blau
var lieblingsfarbe2 : Farben = .schwarz

print("== Enumeration Syntax ==")
print("lieblingsfarbe1: \(lieblingsfarbe1)")
print("lieblingsfarbe2: \(lieblingsfarbe2)")

//MARK: - Matching Enumeration Values with a Switch Statement

let lieblingsfarbe = Farben.rot
var message : String = "Meine lieblingsfarbe ist "

/*
 If all enumeration's cases are not considered
 in the Switch Statement (remember, a Swicth Statement
 must be exhaustive), then, you can
 provide a default case to cover any cases
 that were not considered originally.
 */

switch lieblingsfarbe
{
case .blau:
    message = message + "Blau"
case .grau:
    message = message + "Grau"
case .weiß:
    message = message + "Weiß"
case .schwarz:
    message = message + "Schwarz"
case .lila:
    message = message + "Lila"
case .rosa:
    message = message + "Rosa"
case .rot:
    message = message + "Rot"
case .orange:
    message = message + "Orange"
}

print("== Matching Enumeration Values with a Switch Statement ==")
print(message)
