import Foundation

func getUsername() -> String? {
    return "Juan"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    let username: String? = getUsername()
        
     //still a optional
    let countName1 = username?.count
    // I will get the count if the username is not nil
    
    //ways of unwrapping
        // with nil           the ? is put by Xcode as it knows userName is a optional
    let countName2: Int = username?.count ?? 0
    print(countName2)
    
        // with if let
    if let countName3 = username?.count {
    }
    
    
    let title: String = getTitle()
    // since title is not optional no ? from Xcode
    let count2 = title.count
    // "I will get the count always"
    
                                    //optional chaining
    let firsCharIsLowerCase = (username?.first?.isLowercase) ?? false
                        // If username has a value, and first character in username has a value, then return the value of isLowercase
}
getUserData()

//Explicit unwrap optional !
func getUserData2() {
    let username: String? = getUsername()
    
            //this will crash your app if username is nil
    let count3: Int = username!.count
    // "get the count because I know 100% that username is not nil"
    print (count3)
}

getUserData2() //crash if it actually is nil
