import 'package:flutter/material.dart';

import '../../repositories/book.dart';
import '../../widgets/circular_loading.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  BooksPageState createState() => BooksPageState();
}

class BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Biblioteca")),
        body: Center(
            child: FutureBuilder(
          future: BookRepository().getBooks(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return const Center(
                child: Text("sim"),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  snapshot.error.toString(),
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              );
            } else {
              return const CircularLoading();
            }
          }),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: (() => {}),
          tooltip: "Adicionar",
          child: const Icon(Icons.add),
        ));
  }
}
