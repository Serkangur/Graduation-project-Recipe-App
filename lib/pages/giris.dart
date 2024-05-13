import 'package:bitirme_projesi/Mutfaklar/%C3%A7in.dart';
import 'package:bitirme_projesi/Mutfaklar/alman.dart';
import 'package:bitirme_projesi/Mutfaklar/amerikan.dart';
import 'package:bitirme_projesi/Mutfaklar/azeri.dart';
import 'package:bitirme_projesi/Mutfaklar/t%C3%BCrk.dart';
import 'package:bitirme_projesi/components/yemek_container.dart';
import 'package:bitirme_projesi/models/yemekler.dart';
import 'package:flutter/material.dart';

import 'food_details.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  TextEditingController tfController = TextEditingController();

  List yemekler = [
    Yemek(
      name: "Türk Mutfağı",
      ImagePath: "images/türk.jpg",
    ),
    Yemek(
      name: "Almanya Mutfağı",
      ImagePath: "images/almanya.jpg",
    ),
    Yemek(
      name: "Amerika Mutfağı",
      ImagePath: "images/amerika.jpg",
    ),
    Yemek(
      name: "Azerbeycan Mutfağı",
      ImagePath: "images/azeri.jpg",
    ),
    Yemek(
      name: "Çin Mutfağı",
      ImagePath: "images/çin.jpg",
    ),
  ];

  void navigateToFoodDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          yemek: yemekler[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: true,
            pinned: true,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Container(
                color: Color(0xffFF460A), // Gri arka plan rengi
                child: Center(
                  child: Text(
                    "Herkes İçin Yemek",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 35,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // İki sütunlu bir grid oluşturur
                mainAxisSpacing: 20, // Ana eksen (dikey) arasındaki boşluk
                crossAxisSpacing: 20, // Çapraz eksen (yatay) arasındaki boşluk
                childAspectRatio: 1.3, // Yükseklik / Genişlik oranı
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return YemekTile(
                    onTap: () => navigateToFoodDetails(index),
                    food: yemekler[index],
                  );
                },
                childCount: yemekler.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
