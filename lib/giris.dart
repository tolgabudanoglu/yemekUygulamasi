


import 'package:flutter/material.dart';
import 'package:flutter_application_4/girisSite.dart';
import 'package:flutter_application_4/home.dart';

class girisPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('giriş sayfas'),
      ),

      backgroundColor: Colors.grey.shade200,
      body: Container(
        
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget> [
            Text(
              'giriş yapın',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight:FontWeight.bold, fontSize: 32),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(onPressed: (){}, /*icon:Image.asset("image/googleLog.png"),*/  style: ElevatedButton.styleFrom(backgroundColor:Colors.red  ),
            child: Text('Google ile giriş yap', style: TextStyle(color: Colors.white,)),
            ),
            ElevatedButton(onPressed: (){}  ,style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 10, 96, 167)  ),
              child: Text('Facebook ile giriş yap', style: TextStyle(color: Colors.white,))
            ),
            ElevatedButton(onPressed: (){   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  girisSitePage()),);}, 
                 style: ElevatedButton.styleFrom(backgroundColor:Colors.black  ), 
            child: Text('mail ve şifre ile giriş yap', style: TextStyle(color: Colors.white,))
            ),
            
          ],
        ),
      ),
    );
  }
}