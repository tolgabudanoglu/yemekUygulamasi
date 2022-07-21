import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tavukPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Tavuk Çeşitleri'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'beyazetler');
            },
            child: const Icon(Icons.arrow_back),
          )),
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 20.0),
                Row(children: <Widget>[
                  SizedBox(width: 100.0),
                  butonFonk(
                      text: "but",
                      icon: Icons.add,
                      widget: tavukPage(),
                      context: context),
                  SizedBox(width: 150.0),
                  butonFonk(
                      text: " kanat",
                      icon: Icons.add,
                      widget: tavukPage(),
                      context: context),
                ]),
                SizedBox(height: 50.0),
                Row(children: <Widget>[
                  SizedBox(width: 100.0),
                  butonFonk(
                      text: "baget",
                      icon: Icons.add,
                      widget: tavukPage(),
                      context: context),
                  SizedBox(width: 150.0),
                  butonFonk(
                      text: "ızgara",
                      icon: Icons.add,
                      widget: tavukPage(),
                      context: context),
                ])
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
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.indigo),
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
