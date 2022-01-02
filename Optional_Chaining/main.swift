//
//  main.swift
//  Optional_Chaining
//
//  Created by M_2022814 on 12/14/21.
//

import Foundation

// MARK: - Optional Chaining
// Optional chaining is a process for querying and calling properties, methods and subscripts on an optional that might currently be nil.
// If the optional contains a value, the property, method or subscript call succeeds
// If the optional is nil, the property, method, or subscript call returns nil.
// Multiple queries can be chained together, and the entire chain fails gracefully if any link in the chain is nil

// You specify optional chaining by placing a question mark after the optional value.

class Person {
    var residence : Residence?
}

class Residence {
    var numberOfRooms = 1
}

// If you create a new Person instance, its residence property is by default initialized to nil, by virtue of being an optional. In the ocde below, newguy has a residence property value of nil:
var newGuy = Person()

// This triggers a runtime error:
    // let roomCount = newGuy.residence!.numberOfRooms
// To fix, you have to make Residence() an non-optional value.

// Or you can use optional chaining and a question mark instead of exclamation mark
if let roomCount = newGuy.residence?.numberOfRooms {
    print("the New Guy's House has \(roomCount) rooms")
} else {
    print("Can't get a number of rooms")
}
// Optional chaining will allow error handling.
// Prints "Can't get the number of rooms"
