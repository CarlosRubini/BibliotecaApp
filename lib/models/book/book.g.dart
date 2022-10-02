// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book(
    json['existe'] as bool,
    (json['id'] as num).toDouble(),
    json['title'] as String,
    json['author'] as String,
    (json['loans'] as List)
        .map((e) => BookLoan.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'existe': instance.existe,
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'loans': instance.loans,
    };
