import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text('AskMe Anything'),
          backgroundColor: Colors.teal,
        ),
        body: const BallPage(),
      ),
    ),
  );
}

var random = Random();

class BallPage extends StatefulWidget {
  const BallPage({super.key});
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballFace = 1;
  void changeBallAnswer() {
    setState(() {
      ballFace = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
              onPressed: () {
                changeBallAnswer();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
              child: Image.asset('images/ball$ballFace.png'),
            )),
          ],
        ),
      ),
    );
  }
}
