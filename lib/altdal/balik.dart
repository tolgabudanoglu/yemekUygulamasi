import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class balikPage extends StatelessWidget {
  final List<String> categories = [
    "hamsi",
    "palamut",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Balık Çeşitleri'),
            leading: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, 'beyazetler');
              },
              child: const Icon(Icons.arrow_back),
            )),
        body: SafeArea(
            child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              
              
              children: [
                header("Balıks", context),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: categories
                        .map((String title) => buildCategory(title))
                        .toList()),
                        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: categories
                        .map((String title) => buildCategory(title))
                        .toList()),

                /* Row(
                  children: [
                    buildCategory("balık"),
                    SizedBox(width: 10.0),
                    buildCategory("balık"),
                    SizedBox(width: 10.0),
                    buildCategory("balık"),
                    SizedBox(width: 10.0),
                    buildCategory("balık"),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    buildCategory("balık"),
                    SizedBox(width: 10.0),
                    buildCategory("balık"),
                    SizedBox(width: 10.0),
                    buildCategory("balık"),
                    SizedBox(width: 10.0),
                    buildCategory("balık"),
                  ],
                ),*/
              ],
            ),
          )
        ])));
  }

  Widget header(String title, context) {
    return Column(
      children: [
        SizedBox(height: 29),
        Text(
          title,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0A1034)),
        )
      ],
    );
  }

  Widget buildCategory(String title) {
    return Container(
      width: 150,height: 100,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      margin: EdgeInsets.only(right: 10),
      
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 24,
                offset: Offset(0, 16))
          ]),
      child: Column(children: [
        SizedBox(height: 26),
        //Image.asset('images/balik.png'),
        SizedBox(height: 42),
        Column(
          children: [
            Text("Hamsi"),
            Text("32TL"),
          ],
        )
      ]),
    );
  }
}
