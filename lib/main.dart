import 'package:flutter/material.dart';
import 'package:flutter_study/modal/items.dart';

import 'widget/modal.dart';
import 'widget/card_body.dart';

void main() {
  // runApp(const MyApp());
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.

  final List<DataItems> items = [
    DataItems(id: '1', name: 'Learn flutter'),
    DataItems(id: '2', name: 'Learn laravel'),
    DataItems(id: '3', name: 'Learn Japanese'),
    DataItems(id: '4', name: 'Go shopping'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Todo list',
          style: TextStyle(fontSize: 32),
        )),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
            children: items.map((item) => CardBody(item: item)).toList()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext content) {
                return Modal();
              });
        },
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
    );
  }
}
