import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pizzalarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
         title:const Text ('pizzalar'),
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