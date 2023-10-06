import Foundation

// Constant
let someConstant: Bool = true

// Variable
var someVariable: Bool = true
someVariable = false

var myNumber = 1.21321
myNumber = 2
myNumber = 1321
myNumber = 1

var userIsPremium: Bool = false
// if statements
// if true
if userIsPremium == true {
  print("1-User is Premium")
} else {
  print("1.2-Buy Premium")
}

if userIsPremium { // this is the same
  print("2-User is Premium")
} 

// if false
if userIsPremium == false {
  print("3-User is NOT Premium")
}

if !userIsPremium { // this is the same
  print("4-User is NOT Premium")
}
