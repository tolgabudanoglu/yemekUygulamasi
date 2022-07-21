import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class makarnalarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
         title:const Text ('makarnalar'),
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