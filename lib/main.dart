import 'package:flutter/material.dart';

import 'widget/card_body.dart';

void main() {
  // runApp(const MyApp());
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            CartBody(),
            CartBody(),
            CartBody(),
            CartBody(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext content) {
                return Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Do something',
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Add task')),
                      ],
                    ),
                  ),
                );
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
