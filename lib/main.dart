import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BallPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.red.shade900,
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            setState(() {
              ballnumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballnumber.png')),
    );
  }
}
