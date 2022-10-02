// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_loan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookLoan _$BookLoanFromJson(Map<String, dynamic> json) {
  return BookLoan(
    json['exists'] as bool,
    (json['id'] as num).toDouble(),
    (json['bookId'] as num).toDouble(),
    DateTime.parse(json['borrowed'] as String),
    DateTime.parse(json['returnDate'] as String),
    json['returned'] == null
        ? null
        : DateTime.parse(json['returned'] as String),
  );
}

Map<String, dynamic> _$BookLoanToJson(BookLoan instance) => <String, dynamic>{
      'exists': instance.exists,
      'id': instance.id,
      'bookId': instance.bookId,
      'borrowed': instance.borrowed.toIso8601String(),
      'returnDate': instance.returnDate.toIso8601String(),
      'returned': instance.returned?.toIso8601String(),
    };
