import Foundation

// Functions

func myFirstFunction() {
  print("1-My 1st Funcion")
  mySecondtFunction()
}

func mySecondtFunction() {
  print("2-My 2nd Funcion")
  myThridFunction()
}

func myThridFunction() {
  print("3-My 3rd Funcion")
}

myFirstFunction()

// Functions with variables inside
func getUserName() {
  let userName = "JuanF"
  print("\n4-\(userName)")
}
//print(userName) ERROR
getUserName()

// Functions that return
func getUserLastName() -> String{
  let userLastName = "Madrid"
  return userLastName
}

let lastName = getUserLastName()
print("5-\(lastName)")


func checkIfUserPremium() -> Bool {
  return false
}

//let userPremium: String = checkIfUserPremium() ERROR
let userPremium: Bool = checkIfUserPremium()
print("\n6-Is User Premium: \(userPremium)")

// -------------------------------------------------------------
// function that receives two numbers and returns the sum
func sumTwoNumbers(num1: Int, num2: Int) -> Int {
  let resultSum: Int = num1 + num2
  return resultSum
}
let number1 = 10
let number2 = 20
let sum = sumTwoNumbers(num1: number1, num2: number2)
print("\n7-The Sum of \(number1) + \(number2): \(sum)")



// -------------------------------------------------------------
showFirstScreen()

func showFirstScreen() {
  var userCompleteOnboarding: Bool = true
  var userProfileCreated: Bool = false
  let status = checkUserStatus(didCompleteOnboarding: userCompleteOnboarding, profileIsCreated: userProfileCreated)
  if status == true {
    print("\n8-Show Home Screen")
  } else {
    print("\n9-Show Onboarding Screen")
  }
  
}

func checkUserStatus(didCompleteOnboarding: Bool , profileIsCreated: Bool) -> Bool {
  if didCompleteOnboarding == true && profileIsCreated == true {
    return true
  } else {
    return false
  }
}

// -------------------------------------------------------------
//example of 2 returns
print("\n" + doSomething())

func doSomething() -> String {
  let title = "Avengers"
  
  if title == "Avengers" {
    return "10-is Marvel"
  } else {
    return "11-Not Marver"
  }
  
}

// Guard Statement
guardStatement()
func guardStatement() {
  let title = "Rocky"
  //Make sure tittle == Superman
  guard title == "Superman" else {
    print("\n12-Not DC")  //if not Superman it will enter here after the {
    return //and end here
  }
  //if superman it will enter here after the }

  print("\n13-is DC")
  
}

// another guard statement
func isPersonOver21(age: Int) -> Bool {
  guard age >= 21 else {
    return false
  }
  return true
}
print("\n14-Is Laura over 21:" , isPersonOver21(age: 21) )

// --------------------------------------------------------

// Calculated Variable
let numberOne = 7
let numberTwo = 3


func calculateNumbers() -> Int {
  return numberOne + numberTwo
}

func calculateNumbers(num1: Int, num2: Int) -> Int {
  return num1 + num2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(num1: numberOne, num2: numberTwo)
//calculated variable
var result3: Int {
  return numberOne + numberTwo
}

print("\n15-\(result1)")
print("16-\(result2)")
print("17-\(result3)")
