import 'package:flutter/material.dart';

void main(List<String> args) {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Box 1', Alignment.bottomRight),
                  boxMethod('Box 2', Alignment.bottomLeft),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Box 3', Alignment.topRight),
                  boxMethod('Box 3', Alignment.topLeft),
                ],
              ),
            ],
          ),
          Center(child: boxMethod('Hello World', Alignment.center, true)),
        ],
      ),
    );
  }

  Container boxMethod(String name, Alignment direction,
      [bool boxRadius = false]) {
    return Container(
      decoration: BoxDecoration(
          color: boxRadius
              ? const Color.fromARGB(255, 34, 221, 246)
              : Colors.green,
          borderRadius: BorderRadius.circular(boxRadius ? 100 : 0)),
      alignment: direction,
      width: 160,
      height: 160,
      child: Text(
        name,
        style: const TextStyle(color: Colors.purple, fontSize: 24),
      ),
    );
  }
}
