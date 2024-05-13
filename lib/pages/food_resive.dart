import 'package:bitirme_projesi/models/yemekler.dart';
import 'package:bitirme_projesi/models/yemekler_detay_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Food_Resive extends StatefulWidget {
  final Yemek yemek;
  const Food_Resive({super.key, required this.yemek});

  @override
  State<Food_Resive> createState() => _Food_ResiveState();
}

class _Food_ResiveState extends State<Food_Resive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              const SizedBox(height: 25),
              Image.asset(
                widget.yemek.ImagePath,
                height: 200,
              )
            ],
          ))
        ],
      ),
    );
  }
}
