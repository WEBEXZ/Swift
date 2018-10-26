import UIKit

class Book {
    var author : Person?
}

class Person {
    var name : String = ""
    init(name : String) {
        self.name = name
    }
}

let book = Book()
let person = Person.self

book.author?.name

if let name = book.author?.name {
    print("Author name is \(name)")
} else {
    print("Annonymus author")
}

enum Device { case iPod, iPad, iPhone }
