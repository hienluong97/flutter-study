import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  const Modal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Do something',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print('hello');
                },
                child: const Text('Add task')),
          ],
        ),
      ),
    );
  }
}
