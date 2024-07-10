import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceFace() {
    rightDiceNumber =
        Random().nextInt(6) + 1; // Why plus One?, To get numbers between 1 - 6.
    leftDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  // Right
                  setState(() {
                    changeDiceFace();
                  });
                }, //voidcallback
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  // Left
                  setState(() {
                    changeDiceFace();
                  });
                }, //voidcallback
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
