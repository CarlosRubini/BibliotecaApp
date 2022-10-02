import 'dart:convert';
import 'package:flutter/cupertino.dart';

import '../models/book/book.dart';
import '../models/http_client/http_client.dart';

class BookRepository {
  static const String _routeUrl = 'book';

  Future<List<Book>> getBooks() async {
    const String completeRouteUrl = '$_routeUrl/getBooks';
    final response = await HttpClient.get(route: completeRouteUrl);

    final List<dynamic> decodedJson = jsonDecode(response.body);

    return decodedJson
        .map((dynamic json) => Book.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<Book> saveBook(BuildContext context, Book book) async {
    const String completeRouteUrl = '$_routeUrl/saveBook';
    final String jsonProduto = jsonEncode(book);
    final response = await HttpClient.postJson(
      route: completeRouteUrl,
      jsonBody: jsonProduto,
    );

    final dynamic decodedJson = jsonDecode(response.body);
    final Book bookRetorno = Book.fromJson(decodedJson);
    return bookRetorno;
  }

  Future<void> deleteBook(BuildContext context, Book book) async {
    const String completeRouteUrl = '$_routeUrl/deleteBook';
    final String jsonProduto = jsonEncode(book);
    await HttpClient.postJson(
      route: completeRouteUrl,
      jsonBody: jsonProduto,
    );
  }
}
