










import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/beyazEtler.dart';
import 'package:flutter_application_4/k%C4%B1rm%C4%B1z%C4%B1Etler.dart';
import 'package:flutter_application_4/kahveGrubu.dart';
import 'package:flutter_application_4/makarnalar.dart';
import 'package:flutter_application_4/pizzalar.dart';
import 'package:flutter_application_4/salatalar.dart';
import 'package:flutter_application_4/sicakIcecekler.dart';
import 'package:flutter_application_4/sogukIcecekler.dart';
import 'package:flutter_application_4/tumUrunler.dart';



class HomePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('gastropos'),
          leading: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, 'giris');
              },
              child: Container(
                padding: const EdgeInsets.only(),
                child: Row(children: <Widget>[
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                ]),
              ))),
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 20.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      butonFonk(
                          text: "tüm ürünler",
                          icon: Icons.add,
                          widget: tumUrunlerPage(),
                          context: context),
                      butonFonk(
                          text: "kırmızı etler",
                          icon: Icons.add,
                          widget: kirmiziEtlerPage(),
                          context: context),
                      butonFonk(
                          text: "beyaz etler",
                          icon: Icons.add,
                          widget: beyazEtlerPage(),
                          context: context),
                      butonFonk(
                          text: "makarnalar",
                          icon: Icons.add,
                          widget: makarnalarPage(),
                          context: context),
                    ]),
                SizedBox(height: 20.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      butonFonk(
                          text: "kahve grubu",
                          icon: Icons.add,
                          widget: kahveGrubuPage(),
                          context: context),
                      butonFonk(
                          text: "frozen shake grubu",
                          icon: Icons.add,
                          widget: kirmiziEtlerPage(),
                          context: context),
                      butonFonk(
                          text: "beyaz etler",
                          icon: Icons.add,
                          widget: beyazEtlerPage(),
                          context: context),
                      butonFonk(
                          text: "makarnalar",
                          icon: Icons.add,
                          widget: makarnalarPage(),
                          context: context),
                    ]),
                SizedBox(height: 20.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      butonFonk(
                          text: "salatalar",
                          icon: Icons.add,
                          widget: salatalarPage(),
                          context: context),
                      butonFonk(
                          text: "pizzalar",
                          icon: Icons.add,
                          widget: pizzalarPage(),
                          context: context),
                      butonFonk(
                          text: "sıcak içecek",
                          icon: Icons.add,
                          widget: sicakIceceklerPage(),
                          context: context),
                      butonFonk(
                          text: "soğuk içecek",
                          icon: Icons.add,
                          widget: sogukIceceklerPage(),
                          context: context),
                    ]),
              ],
            ),
          )
        ],
      )),
    );
  }

  butonFonk(
      {required String text,
      required IconData icon,
      Widget? widget,
      BuildContext? context}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context!, MaterialPageRoute(builder: (context) {
          return widget!;
        }));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.indigo),
            child: Icon(
              icon,
              color: Colors.pink,
              size: 18,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.indigo),
          ),
        ],
      ),
    );
  }
}
