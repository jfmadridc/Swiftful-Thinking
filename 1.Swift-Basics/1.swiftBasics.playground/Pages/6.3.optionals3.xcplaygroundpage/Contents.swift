import Foundation

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

/*
print(userIsNew)
print(userDidCompleteOnboarding)
print(userFavoriteMovie)
*/

//checks the 3 at a time with if let
func checkIfUserIsSetup() -> Bool {
    //1. not neccesary to create let isNew didCompOnbo favMovie
    //1. if let isNew = userIsNew, let didCompOnbo = userDidCompleteOnboarding, let favMovie = userFavoriteMovie {
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompletenboarding == Bool AND
        // userFavoriteMovie == String
        
        //1.return getUserStatus(isNew, didCompOnbo, favMovie)
        return getUserStatus(
            userIsNew,
            userDidCompleteOnboarding,
            userFavoriteMovie)
    }
    // userIsNew == nil OR
    // userDidCompleteOnboarding == nil OR
    // userFavoriteMovie == nil
    return false
}

//checks the 3 at a time with guard
func checkIfUserIsSetup2 () -> Bool {
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        return false
    }
    return getUserStatus(
        userIsNew,
        userDidCompleteOnboarding,
        userFavoriteMovie)
}


func getUserStatus(_ userIsNew: Bool,_ userDidCompleteOnboarding: Bool,_ userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    return false
}

// ----------------------------
//to check individualy nested if-let
func checkIfUserIsSetup3() -> Bool {
    
    if let userIsNew {
        // userIsNew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            
            if let userFavoriteMovie {
                // userFavoriteMovie == String
                return getUserStatus(
                    userIsNew,
                    userDidCompleteOnboarding,
                    userFavoriteMovie)
            } else {
                // userFavoriteMovie == nil
                return false
            }
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
    } else {
        // userIsNew == nil
        return false
    }
}

// Layered Guard makes it so you dont have to go into a nested {}
func checkIfUserIsSetup4() -> Bool {
    
    guard let userIsNew else {
        // userIsNew == nil
        return false
    }
    // userIsNew == Bool
    
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    // userDidCompleteOnboarding == Bool
    
    guard let userFavoriteMovie else {
        // userFavoriteMovie == nil
        return false
    }
    // userFavoriteMovie == String
    return getUserStatus(
        userIsNew,
        userDidCompleteOnboarding,
        userFavoriteMovie)
}
//without comments is much simpler than if let
func checkIfUserIsSetup5() -> Bool {
    guard let userIsNew else {
        return false
    }
    guard let userDidCompleteOnboarding else {
        return false
    }
    guard let userFavoriteMovie else {
        return false
    }
    return getUserStatus(
        userIsNew,
        userDidCompleteOnboarding,
        userFavoriteMovie)
}
