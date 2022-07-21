


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/home.dart';

class girisSitePage extends StatefulWidget {
  

  @override
  _girisSitePageState createState() => _girisSitePageState();
}

class _girisSitePageState extends State<girisSitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('giriş yapınız'),
      ),
      
      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(child: Column(children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration( 
                prefixIcon: Icon(Icons.mail),
                hintText: 'email',
                labelText: 'email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration( 
                prefixIcon: Icon(Icons.mail),
                hintText: 'şifre',
                labelText: 'şifre',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16,),

             ElevatedButton(onPressed: (){
              Padding: const EdgeInsets.all(5);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomePage()),);},
                  style:ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 204, 10, 10)  ),
              child: Text('giriş yap', style: TextStyle(color: Colors.white,))
            ),
            SizedBox(height: 16,),
          ],)),
        ),
      ),
    
    );
  }
}