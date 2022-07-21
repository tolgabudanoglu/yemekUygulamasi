import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kirmiziEtlerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('kırmızı etler'),
          leading: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.menu),
          )),
    );
  }
}
