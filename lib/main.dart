import 'package:flutter/material.dart';

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
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            boxMethod('box 1', Alignment.bottomCenter),
            boxMethod('box 2', Alignment.bottomCenter),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            boxMethod('box 3', Alignment.bottomCenter),
            boxMethod('box 4', Alignment.bottomCenter),
          ],
        ),
      ],
    ));
  }

  Container boxMethod(String boxName, Alignment direction) {
    return Container(
      alignment: direction,
      width: 150,
      height: 150,
      color: Color.fromARGB(224, 100, 169, 225),
      child: Text(boxName,
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(225, 225, 100, 225),
          )),
    );
  }
}
