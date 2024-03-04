import UIKit
import Foundation

struct Book {
    let title: String
}

class Library {
    private(set) var books: [Book]
    
    init(books: [Book] = []) {
        self.books = books
    }
    
    func countBooks() -> Int {
        return books.count
    }
    
    func addBook(_ book: Book) {
        books.append(book)
    }
    
    func insertBook(_ book: Book, at index: Int) {
        guard index >= 0 && index <= books.count else {
            print("Invalid index")
            return
        }
        books.insert(book, at: index)
    }
    
    func removeBook(at index: Int) {
        guard index >= 0 && index < books.count else {
            print("Invalid index")
            return
        }
        books.remove(at: index)
    }
    
    func printBooks() {
        for (index, book) in books.enumerated() {
            print("\(index + 1). \(book.title)")
        }
    }
}

let library = Library(books: [
    Book(title: "A Time to Kill "),
    Book(title: "The House of Mirth"),
    Book(title: "1967")
])

library.printBooks()

library.addBook(Book(title: "A Scanner Darkly"))
library.printBooks()

library.insertBook(Book(title: "Number the Stars "), at: 1)
library.printBooks()

library.removeBook(at: 0)
library.printBooks()
