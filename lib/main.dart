import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int imageInt = 1;
  int colorInt = 1;

  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.amber,
    Colors.cyan,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.indigo,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.lime,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.teal,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Asupan Meme",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: colors[colorInt],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              imageInt = Random().nextInt(10) + 1;
              colorInt = Random().nextInt(colors.length);
            });
          },
          // Isi dari tombol
          backgroundColor: colors[colorInt],
          child: const Icon(
            Icons.refresh,
            color: Colors.white,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Meme apa hari ini?',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Image.asset(
                  'assets/images/$imageInt.jpeg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
