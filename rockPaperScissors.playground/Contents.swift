//func sayHello(name: String) -> String {
//    return "Hello there, \(name). Hope you are having a good day!"
//}
//
//// when writing multiple things on the same line, use the semi-colon
//let name: String = "Emeka"; let age: Int = 21
//
//print(name)
//print(age)
//
//print(sayHello(name: "Charles"))

import Foundation

print("Before")

DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
    print("After")
}

print("Hello world")
