import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  CardBody({Key? key, required this.item}) : super(key: key);
  var item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 74,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 120, 173, 223),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.name,
              style: const TextStyle(fontSize: 20),
            ),
            const Icon(
              Icons.delete_outline,
            ),
          ],
        ),
      ),
    );
  }
}
