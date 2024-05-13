import 'package:bitirme_projesi/models/yemekler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/yemek_container.dart';
import 'food_resive.dart';

class FoodDetailsPage extends StatefulWidget {
  final Yemek yemek;
  const FoodDetailsPage({super.key, required this.yemek});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  List yemekler = [
    Yemek(
      name: "Adana",
      ImagePath: "images/türk.jpg",
      
    ),
    Yemek(
      name: "Mantı",
      ImagePath: "images/almanya.jpg",
     
    ),
    Yemek(
      name: "Baklava",
      ImagePath: "images/amerika.jpg",
     
    ),
    Yemek(
      name: "İçli Köfte",
      ImagePath: "images/azeri.jpg",
      
    ),
    Yemek(
      name: "Küşleme",
      ImagePath: "images/çin.jpg",
      
    ),
  ];

  void navigateToFood_Resive(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Food_Resive(
          yemek: yemekler[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "TARİFLER",
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
                    onTap: () => navigateToFood_Resive(index),
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
