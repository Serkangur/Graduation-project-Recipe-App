import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Alman extends StatefulWidget {
  const Alman({super.key});

  @override
  State<Alman> createState() => _AlmanState();
}

class _AlmanState extends State<Alman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alman Mutfağı"),
      ),
      backgroundColor: Color.fromARGB(255, 112, 218, 126),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [],
        ),
      ),
    );
  }
}
