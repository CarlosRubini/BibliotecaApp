// ignore: import_of_legacy_library_into_null_safe
import 'package:json_annotation/json_annotation.dart';
import '../book_loan/book_loan.dart';

part 'book.g.dart';

@JsonSerializable()
class Book {
  bool existe;
  double id;
  String title;
  String author;
  List<BookLoan> loans;

  Book(this.existe, this.id, this.title, this.author, this.loans);

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
  Map<String, dynamic> toJson() => _$BookToJson(this);
}
