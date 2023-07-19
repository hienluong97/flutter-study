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

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final List<DataItems> items = [DataItems(id: '1', name: 'Learn Flutter')];

  void _handleAddTask(String task) {
    final newItem = DataItems(id: DateTime.now().toString(), name: task);
    setState(() {
      items.add(newItem);
    });
  }

  void _handleDeleteTask(String id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

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
            children: items
                .map((item) => CardBody(item: item, delTask: _handleDeleteTask))
                .toList()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext content) {
                return Modal(addTask: _handleAddTask);
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
