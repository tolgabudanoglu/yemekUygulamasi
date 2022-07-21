








import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/altdal/balik.dart';
import 'package:flutter_application_4/altdal/tavuk.dart';


class beyazEtlerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('beyaz etler'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');
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
                SizedBox(height: 40.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      butonFonk(
                          text: "tavuk",
                          icon: Icons.add,
                          widget: tavukPage(),
                          context: context),
                      butonFonk(
                          text: " balık",
                          icon: Icons.add,
                          widget: balikPage(),
                          context: context),
                      butonFonk(
                          text: " ahtapot", icon: Icons.add, context: context),
                      butonFonk(
                          text: "yengeç", icon: Icons.add, context: context),
                    ]),
                SizedBox(height: 20.0),
                //   Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: <Widget>[
                //         butonFonk(text: "et", icon: Icons.add, context: context),
                //         butonFonk(text: "et", icon: Icons.add, context: context),
                //         butonFonk(text: "et", icon: Icons.add, context: context),
                //          butonFonk(text: "et", icon: Icons.add, context: context),
                //        ]),
                SizedBox(height: 20.0),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      butonFonk(
                          text: "salatalar", icon: Icons.add, context: context),
                      butonFonk(
                          text: "pizzalar", icon: Icons.add, context: context),
                      butonFonk(
                          text: "sıcak ", icon: Icons.add, context: context),
                      butonFonk(
                          text: "soğuk ", icon: Icons.add, context: context),
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
