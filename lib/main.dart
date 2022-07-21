import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/altdal/tavuk.dart';
import 'package:flutter_application_4/beyazEtler.dart';
import 'package:flutter_application_4/giris.dart';
import 'package:flutter_application_4/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'beyazetler': (_) => beyazEtlerPage(),
        'tavuk': (_) => tavukPage(),
        'home': (_) => HomePage(),
        'giris': (_) => girisPage(),
      },
      title: 'Gastropos',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: girisPage(),
    );
  }
}
