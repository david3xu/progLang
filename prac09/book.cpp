#include <iostream> // is for input and output stream
#include <vector>   // provides the dynamic array functionality

// Book class definition
class Book {
private:
    int bookID;   // private variables, only accessible within the class, used to store the book ID, name, and ISBN, built-in types, data types 
    std::string bookName;  // std is a namespace, string is a class, from standard <string> library, bookName is an object
    std::string ISBN;
public:
    // Getter methods
    int GetBookID() const { return bookID; }
    std::string GetBookName() const { return bookName; }
    std::string GetISBN() const { return ISBN; }
    
    // Setter methods
    void SetBookID(int id) { bookID = id; }
    void SetBookName(std::string name) { bookName = name; }
    void SetBookISBN(std::string isbn) { ISBN = isbn; }
    
    // Default constructor
    Book() : bookID(0), bookName(""), ISBN("") {} // constructor, initializes the bookID, bookName, and ISBN to 0, "", and "" respectively
    
    // Destructor
    ~Book() {} // destructor, cleans up the object when it is destroyed
};

// Function to print books (for debugging purposes)
void PrintBooks(const std::vector<Book>& books) {
    for (const auto& book : books) {
        std::cout << "ID: " << book.GetBookID() << ", Name: " << book.GetBookName() << ", ISBN: " << book.GetISBN() << std::endl;
    }
}

// Quicksort implementation
void QuickSort(std::vector<Book>& books, int left, int right) {
    if (left >= right) return; // Base case: 0 or 1 element in subarray

    Book pivot = books[right]; // Choose the last element as pivot
    int partitionIndex = left; // Index of the first element greater than pivot

    // Partition the array
    for (int i = left; i < right; ++i) {
        if (books[i].GetBookID() < pivot.GetBookID()) {
            std::swap(books[i], books[partitionIndex]);
            partitionIndex++;
        }
    }
    std::swap(books[partitionIndex], books[right]); // Move pivot to its final position

    // Recursively sort the left and right subarrays
    QuickSort(books, left, partitionIndex - 1);
    QuickSort(books, partitionIndex + 1, right);
}

// main function, entry point of the program
int main() {
    std::vector<Book> books; // vector is a dynamic array, books is an object of the Book class

    // Adding some books to the vector
    Book book1; // book1 is an object of the Book class                   
    book1.SetBookID(2345); // sets the bookID to 2345
    book1.SetBookName("The Great Gatsby"); // sets the bookName to "The Great Gatsby"
    book1.SetBookISBN("9780743273565"); // sets the ISBN to "9780743273565"
    books.push_back(book1); // adds book1 to the end of the vector

    Book book2;
    book2.SetBookID(1234);
    book2.SetBookName("To Kill a Mockingbird");
    book2.SetBookISBN("9780446310789");
    books.push_back(book2);

    Book book3;
    book3.SetBookID(5678);
    book3.SetBookName("1984");
    book3.SetBookISBN("9780451524935");
    books.push_back(book3);

    // Print books before sorting
    std::cout << "Before sorting:" << std::endl;
    PrintBooks(books);

    // Sort the vector of books using quicksort
    QuickSort(books, 0, books.size() - 1);

    // Print books after sorting
    std::cout << "\nAfter sorting by ID:" << std::endl;
    PrintBooks(books);

    return 0;
}

// g++ -std=c++11 book.cpp -o book_program