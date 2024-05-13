import 'package:bitirme_projesi/pages/giris.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffFF4B3A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    'HERKES İÇİN\nYEMEK',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight / 7,
                        fontFamily: "Jomhuria"),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    height: screenHeight / 2,
                    //width: 350,
                    child: Image.asset(
                      "images/giris.png",
                      fit: BoxFit.cover,
                    )),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GirisSayfasi()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(screenHeight / 2.2, screenWidth / 6.5),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      )),
                  child: Text(
                    "Hadi Başlayalım",
                    style: TextStyle(color: Color(0xffFF460A), fontSize: 23),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
