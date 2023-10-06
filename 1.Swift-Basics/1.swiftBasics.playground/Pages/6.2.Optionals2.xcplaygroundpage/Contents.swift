import Foundation

var userIsPremium: Bool? = nil

func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfUserIsPremium2()
print("1-\(isPremium)")

// if-let
//when if-let has a value enter the function
func checkIfUserIsPremium3() -> Bool {
    //if userIsPremium has a value create a new constant newValue with that
    if let newValue = userIsPremium {
    // Here we have access to the non-optional value
    return newValue
    } else {
        return false //this is the same
    }
}
    
func checkIfUserIsPremium4() -> Bool {
    if let newValue = userIsPremium {
        return newValue
    }
    return false //this is the same
}

func checkIfUserIsPremium5() -> Bool {
    /*if the userIsPremium has a value it creates a new one
    that is not optional like the original*/
    if let userIsPremium {
        return userIsPremium
    }
    return false
}


// Guard
// when guard has no value enter the function
func checkIfUserIsPremium6() -> Bool {
    //make sure ther is a value
    //if there is, make a newValue with the userIsPremium value
    guard let newValue = userIsPremium else {
        return false //if not value do this
    }
    // Here we have access to the non-optional value
    return newValue //if has value then execute this
}

func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}

// if let example with a string
var myOptionalString: String?
func checkOptionalString() -> String {
    if let myOptionalString {
        return myOptionalString
    }
    return "2-There is no value"
}
print(checkOptionalString())

// guard example with a string
func checkOptionalString2() -> String {
    guard let myOptionalString else {
        return "3-There is no value"
    }
    return myOptionalString
}
print(checkOptionalString2())
