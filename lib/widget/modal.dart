import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  Modal({Key? key, required this.addTask}) : super(key: key);

  String textValue = '';

  void _handleOnTextInputChange(text) {
    textValue = text;
  }

  final Function addTask;
  void _handleOnClick(BuildContext context) {
    if (textValue.isEmpty) {
      return;
    }
    addTask(textValue);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                _handleOnTextInputChange(text);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Do something',
              ),
            ),
            ElevatedButton(
                onPressed: (() => _handleOnClick(context)),
                child: const Text('Add task')),
          ],
        ),
      ),
    );
  }
}
