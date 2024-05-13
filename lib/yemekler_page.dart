import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class yemekler_page extends StatefulWidget {
  const yemekler_page({super.key});

  @override
  State<yemekler_page> createState() => _yemekler_pageState();
}

class _yemekler_pageState extends State<yemekler_page> {
  var tfController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF4B3A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 219, 218, 218)),
                  child: TextField(
                    controller: tfController,
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Ara",
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}