import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kirmiziEtlerPage extends StatelessWidget {
  final List <String> imageList = [
    "https://cdn.yemek.com/mncrop/940/625/uploads/2022/03/ev-koftesi-yemekcom.jpg",
    "https://cdn.yemek.com/mnresize/1250/833/uploads/2021/03/sipsak-tabakalar2-yemekcom.jpg",
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('kırmızı etler'),
          leading: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.menu),
          )),


          body: Center(child:  CarouselSlider(options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
          items:imageList.map((e) => ClipRRect(
            borderRadius:BorderRadius.circular(8),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(e,width: 1050,height: 350,
                fit: BoxFit.cover,)
              ],
            ),
            
          )).toList())),

           
    );
  }
}


