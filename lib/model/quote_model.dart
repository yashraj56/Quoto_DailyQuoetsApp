/*
This class defines a QuoteModel class that represents a quote. The QuoteModel class has two properties:
text and author, which are both nullable strings (String?). The text property represents the text
of the quote, and the author property represents the author of the quote.
*/

class QuoteModel {
  /* ? => null-aware operator*/
  String? text;
  String? author;

/*
The QuoteModel class has two constructors =>
A default constructor that takes two named parameters (text and author), and a named constructor
fromJson that takes a Map<String, dynamic> as input and returns a QuoteModel object.
The fromJson constructor is used to create a QuoteModel object from JSON data.
*/
  QuoteModel({required this.text, required this.author});

  QuoteModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    author = json['author'];
  }

  /*
  The toJson() method in the QuoteModel class is used to convert an instance of the class into a
  JSON (JavaScript Object Notation) representation. JSON is a lightweight data interchange format
  that is commonly used in web applications and APIs.
  In the toJson() method, a new empty Map object is created with String keys and dynamic values.
  The text and author properties of the QuoteModel instance are then added to the map
  with their respective keys.
  */

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['author'] = author;
    return data;
  }
}
