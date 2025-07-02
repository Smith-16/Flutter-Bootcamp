void main() {
  Book book = Book("Dart Essentials", "Alice Walker", 2012);
  book.displayDetails();
  print("Is over 10 years old? ${book.isOverTenYearsOld()}");
}

class Book {
  String title;
  String author;
  int publicationYear;

  Book(this.title, this.author, this.publicationYear);

  void displayDetails() {
    print("Title: $title\nAuthor: $author\nYear: $publicationYear");
  }

  bool isOverTenYearsOld() {
    return DateTime.now().year - publicationYear > 10;
  }
}