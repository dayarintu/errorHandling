//: Playground - noun: a place where people can play

import UIKit


// error : code that produces an incorrect or unexpected result , or causes your program to behave in a unintendedmanner.

// error Protocol , throw/throws , try , do , catch
//Domain Errors: converting types causes domain errors(outside the range , incorct input)
// using of failable init? swift can easily handle the domain errors by returning nill
// compiler errors: domain errors ,
//  runtime errors: compile cannot catch , 1.recoverable , un recoverable


//struct Person {
//    let name: String
//    var age: String
//}
//
//enum FriendError: Error {
//    case invalidData(description: String)
//    
//}
//
//func friend(friend: [String: String]) throws -> Person {
//    guard let name = friend["name"] else {
//        throw FriendError.invalidData(description: "invalidName")
//    }
//    guard let age = friend["age"] else {
//        throw FriendError.invalidData(description: "invalidAge")
//    }
//    return Person(name: name, age: age)
//}
//
//let myPerson = ["name" : "daya" , "age": "27"]
//
//do {
//    let person1 = try friend(friend: myPerson)
//} catch FriendError.invalidData(let description){
//    print(description)
//}



enum ParserError: Error {
    case emptyDictionary
    case invalidKey
}

struct Parser {
    var data: [String : String?]?

    //In the editor, you have a struct named Parser whose job is to deconstruct information from the web. The incoming data can be nil, keys may not exist, and values might be nil as well.
   // In this task, complete the body of the parse function. If the data is nil, throw the EmptyDictionary error. If the key "someKey" doesn't exist throw the InvalidKey error.
   // Hint: To get a list of keys in a dictionary you can use the keys property which returns an array. Use the contains method on it to check if the value exists in the array
    
   // Now that you have good error handling code, let's call the parse method. Remember that since this is a throwing function, you will need to use a do catch block. For this task, just use a generic catch block rather than pattern matching on specific errors.
    
    // Perfect! We're almost done. Rather than a generic catch clause, let's pattern match on the specific errors so that we can log better error messages.
    //In this task, change the catch statement to include specific error cases. Like before you can just log an error message of your choosing.
    
    func parse() throws {
        guard let myData = data else {
            throw ParserError.emptyDictionary
        }
        guard let myKey = myData["someKey"] else {
            throw ParserError.invalidKey
        }
        defer {  // closes the file once called
            myKey
        }
        defer {
            myData // close the filemyData then myKey ...reverse order
        }
}
}

let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: nil)

do {
    let newData = try parser.parse()
} catch ParserError.invalidKey {
print("invalidKey")
} catch ParserError.emptyDictionary {
    print("emptyData")
}



