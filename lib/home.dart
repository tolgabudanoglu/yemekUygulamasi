

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/components/navBar.dart';

class homePage extends StatefulWidget {

 
  

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<String> get imageList => [
     "https://cdn.yemek.com/mncrop/940/625/uploads/2022/03/ev-koftesi-yemekcom.jpg",
    "https://cdn.yemek.com/mnresize/1250/833/uploads/2021/03/sipsak-tabakalar2-yemekcom.jpg",
  ];

  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       drawer:NavBar(),
      appBar: AppBar(
      
          centerTitle: true,
         
          backgroundColor: Color.fromARGB(255, 255, 248, 229),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.location_on),
              const SizedBox(
                width: 10,
              ),
              const Text("İş - (Isparta - Merkez)", // Adress Bar
                  style: TextStyle(fontSize: 18)),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
      ),



          

           
           
          







      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      body: SizedBox(
        
                 
      
        
        height: MediaQuery.of(context).size.height,
        child: ListView(
          
          children: [
           
            Center(child: image(imageList),),
            Center(child: logo()),
            
            search(context),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        category("Hamburger", true),
                        category("Fit", false),
                        category("Pizza", false),
                        category("Çiğköfte", false),
                        category("Ev Yemeği", false)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.32,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Stack(
                          children: [
                            item(context, "burgerqueen", "BurgerQueen"),
                            score(7.4)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "burgerx", "BurgerX"),
                            score(6.8)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "mcducks", "MCDucks"),
                            score(7.9)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "burgerking", "BurgerKing"),
                            score(7.9)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Tüm Restoranlar",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        const Text(
                          "Tümünü Gör",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.32,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Stack(
                          children: [
                            item(context, "pizzaCut", "PizzaCut"),
                            score(8.2)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "sunbucks", "SunBucks"),
                            score(8.4)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "Freshy", "Freshy"),
                            score(8.7)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "sutlacinyeri", "Sütlacın Yeri"),
                            score(9.3)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "burgerqueen", "BurgerQueen"),
                            score(7.4)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "burgerx", "BurgerX"),
                            score(6.8)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "mcducks", "MCDucks"),
                            score(7.9)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "evyemegi", "EvYemegi"),
                            score(6.5)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "Pidem", "Pidem"),
                            score(5.1)
                          ],
                        ),
                        Stack(
                          children: [
                            item(context, "burgerking", "BurgerKing"),
                            score(7.2)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding score(double score) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 0.5,
                  offset: const Offset(0, 1),
                )
              ]),
          width: 70,
          height: 25,
          child: Row(
            children: [
              const Icon(Icons.star, color: Color.fromARGB(255, 0, 161, 157)),
              Text(
                "$score / 10",
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 161, 157), fontSize: 12),
              ),
            ],
          )),
    );
  }

  Container category(categoryText, bool ticked) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          width: 120,
          decoration: BoxDecoration(
              color: ticked == true
                  ? Color.fromARGB(255, 255, 179, 68)
                  : Colors.white,
              border: Border.all(color: Colors.transparent, width: 5),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 0.5,
                  offset: const Offset(0, 1),
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(categoryText),
              ticked == true
                  ? Icon(Icons.cancel, color: Colors.white)
                  : Icon(Icons.arrow_drop_down_circle,
                      color: Color.fromARGB(255, 255, 179, 68))
            ],
          ),
        ),
      ),
    );
  }

  Container item(BuildContext context, String photo, String company) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
        child: Column(
          children: [
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1.5),
                      )
                    ]),
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.height * 0.22,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'kirmizietler');
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$company",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ));
  }

  SizedBox search(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.red),
              borderRadius: BorderRadius.all(
                Radius.circular(05.0),
              ),
            ),
            hintText: 'Neye ihtiyacın var?',
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  Container logo() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent, width: 10),
          borderRadius: BorderRadius.circular(30)),
      child: const Text(
        "Gastropos",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromARGB(255, 255, 179, 68),
          fontSize: 50,
        ),
      ),
    );
  }

  Container maps(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.transparent,
    );

    
    }
  }
  
  Container image(List <String> imageList) {
    return Container(child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
          items:imageList.map((e) => ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(e,width: 300,height: 100,
                fit: BoxFit.cover,)
              ],
            ),
          )).toList()
        ));
    
  }

    

  

