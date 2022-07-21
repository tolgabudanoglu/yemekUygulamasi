import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sicakIceceklerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
         title:const Text ('sıcak icecekler'),
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