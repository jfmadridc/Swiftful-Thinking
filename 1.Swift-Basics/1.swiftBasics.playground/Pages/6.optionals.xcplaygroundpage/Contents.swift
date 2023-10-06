import Foundation

// Optionals

// normal variable There is always a value and it is a Boolean
let myBool: Bool = false

/*
//We don't know if there is a value, but if there is, it is a Boolean
var myOptBool: Bool? = nil

print(myOptBool) //prints nil
myOptBool = true
print(myOptBool) //prints Optional(true)
myOptBool = false
print(myOptBool) //Optional(false)
myOptBool = nil
print(myOptBool) //prints nil
*/

var myOptBool: Bool?
let newValue: Bool? = myOptBool

// nil Coalescing operator ??
// is equal the value of myOptBool(if there is one), otherwise false
let notOptBool: Bool = myOptBool ?? false
print("1-\(notOptBool)")

//Optional String
var myOptionalString: String?
print("2-\( myOptionalString ?? "There is no value" )")
myOptionalString = "My name is Juan"
print("3-\( myOptionalString ?? "There is no value" )")

//another optional String
var optionalHello: String? = "Hello World!"
let newString2 = optionalHello ?? "Default Value"
print("4-\(newString2)")

// -----------------------------------------------------------
