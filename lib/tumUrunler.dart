import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tumUrunlerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:const Text ('tüm ürünler'),
         leading: GestureDetector(
    onTap: () {  },
    child: const Icon(
      Icons.menu
     
          
      ),
         )
      
         ),
    );
   
  }
  

  
}