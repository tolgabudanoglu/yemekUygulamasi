

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class salatalarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:const Text ('salatalar'),
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