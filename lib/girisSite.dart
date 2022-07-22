


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/home.dart';
import 'package:flutter_application_4/kayitOl.dart';

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
                prefixIcon: Icon(Icons.password),
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
                  MaterialPageRoute(builder: (context) =>  homePage()),);},
                  style:ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 204, 10, 10)  ),
              child: Text('giriş yap', style: TextStyle(color: Colors.white,))
            ),
            SizedBox(height: 16,),

            TextButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  kayitOlPage()),);
            }, child: Text('hesabınız yok mu? kayıt olun')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text('Hemen üye olarak sistemimizin ayrıcalıklarından faydalanın' ,style: TextStyle(fontWeight: FontWeight.bold),),
                  
                ),)
              ],
            ),
            SizedBox(height: 25,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text('Üye Olun' ,style:TextStyle(fontWeight: FontWeight.bold),),
                  
                  
                  
                ),)
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text('Üye olarak size özel kampanyalardan faydalanabilirsiniz' ,style:TextStyle(fontWeight: FontWeight.w400),),
                  
                  
                  
                ),)
              ],
            ),
             SizedBox(height: 15,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text('Puan toplayın' ,style:TextStyle(fontWeight: FontWeight.bold),),
                  
                  
                  
                ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text('Kazandığınız puanları dilediğinizce harcayabilirsiniz' ,style:TextStyle(fontWeight: FontWeight.w400),),
                  
                  
                  
                ),)
              ],
            ),

            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                child: Container(
                  
                  margin: EdgeInsets.only(left: 20),
                  
                  
                  child: Text('Online ödeme' ,style:TextStyle(fontWeight: FontWeight.bold),),
                  
                  
                  
                  
                ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                child: Container(
                  
                  margin: EdgeInsets.only(left: 20),
                  
                  
                  child: Text('Siparişlerinizin ödemesini online olarak yaparak, puan toplayabilirsiniz' ,style:TextStyle(fontWeight: FontWeight.w400),),
                  
                  
                  
                  
                ),)
              ],
            ),
            SizedBox(height: 15,),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                child: Container(
                  
                  margin: EdgeInsets.only(left: 20),
                  
                  
                  child: Text('Kurye takibi' ,style:TextStyle(fontWeight: FontWeight.bold),),
                  
                  
                  
                  
                ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                child: Container(
                  
                  margin: EdgeInsets.only(left: 20),
                  
                  
                  child: Text('Siparişinizin takibini harita üzerinden takip ederek, size ulaşma süresini görebilirsiniz.' ,style:TextStyle(fontWeight: FontWeight.w400),),
                  
                  
                  
                  
                ),)
              ],
            ),
          ],)),
        ),
      ),
    
    );
  }
}