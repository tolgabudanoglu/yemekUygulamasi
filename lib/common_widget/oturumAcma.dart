

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OturumAcma extends StatelessWidget {
  


  final String butonText;
  final Color butonColor;
  final Color textColor;
 
  final double yukseklik;
  final Widget buttonIcon;
  final VoidCallback onPressed;
  
 
  
  

  const OturumAcma({super.key,  required this.butonText,  required this.butonColor,  required this.textColor,    required this.yukseklik,  required this.buttonIcon,  required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed  ,style: ElevatedButton.styleFrom(backgroundColor:Colors.red  ),
            child: Text(butonText, style: TextStyle(color: textColor)),
            );
  }
}