// ignore: import_of_legacy_library_into_null_safe
import 'package:json_annotation/json_annotation.dart';

part 'book_loan.g.dart';

@JsonSerializable()
class BookLoan {
  bool exists;
  double id;
  double bookId;
  DateTime borrowed;
  DateTime returnDate;
  DateTime? returned;

  BookLoan(this.exists, this.id, this.bookId, this.borrowed, this.returnDate,
      this.returned);

  factory BookLoan.fromJson(Map<String, dynamic> json) =>
      _$BookLoanFromJson(json);
  Map<String, dynamic> toJson() => _$BookLoanToJson(this);
}
