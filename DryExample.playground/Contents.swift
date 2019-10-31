import UIKit

var str = "Hello, playground"

struct Person {
    let firstName: String
    let lastName: String
}

func printPersons(persons: [Person]) {
    for person in persons {
        print("First name: \(person.firstName), last name: \(person.lastName)")
    }
}
let vasya = Person(firstName: "Vasya", lastName: "Pupkin")
let masha = Person(firstName: "Masha", lastName: "Ivanova")
var persons: [Person] = [vasya, masha]

printPersons(persons: persons)

let katya = Person(firstName: "Katya", lastName: "Orlova")
persons.append(katya)

print("\n")

printPersons(persons: persons)
