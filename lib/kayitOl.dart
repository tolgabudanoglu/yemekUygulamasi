

import 'package:flutter/material.dart';
import 'package:flutter_application_4/giris.dart';
import 'package:flutter_application_4/girisSite.dart';
import 'package:flutter_application_4/home.dart';
import 'package:flutter_application_4/k%C4%B1rm%C4%B1z%C4%B1Etler.dart';

class kayitOlPage extends StatefulWidget {
 

  @override
  State<kayitOlPage> createState() => _kayitOlPageState();
}

class _kayitOlPageState extends State<kayitOlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('kayıt ol'),
      ),

      body: SingleChildScrollView(

        child: Padding(padding: EdgeInsets.all(16.0),
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
              prefixIcon: Icon(Icons.password),
              hintText: 'şifre',
              labelText: 'şifre',
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 16,),


           TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              hintText: 'şifre(tekrar)',
              labelText: 'şifre(tekrar)',
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 16,),

            TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              
              hintText: 'adınız',
              labelText: 'adınız',
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 16,),

          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              
              hintText: 'soyadınız',
              labelText: 'soyadınız',
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 16,),

          ElevatedButton(onPressed: (){
              Padding: const EdgeInsets.all(5);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  homePage()),);},
                  style:ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 204, 10, 10)  ),
              child: Text('kayıt ol', style: TextStyle(color: Colors.white,))
            ),

        ],)),),
      ),
    );
  }
}
