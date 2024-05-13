import 'dart:html';

import 'package:bitirme_projesi/models/yemekler_detay_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class YemekDetay extends StatelessWidget {
  final Yemek_detay food;
  final void Function()? onTap;
  const YemekDetay({required this.food,required this.onTap});
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: onTap ,
        child: Container(
          height: 250,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 0.1,
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: 400,
                child: Image.asset(
                  food.ImagePath_detay,
                  height: 205,
                  width: 205,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                food.name,
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Oswald",
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}