import 'package:flutter/material.dart';
import 'package:flutter_application_4/girisSite.dart';
import 'package:flutter_application_4/sepet.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('girş- üyelik'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  girisSitePage()),);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket_outlined),
            title: Text('sepetim'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  sepetPage()),);
            },
          ),
          ListTile(
            leading: Icon(Icons.food_bank_rounded),
            title: Text('ürünlere göz atın'),
            onTap: () {
              
            },
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('bölge değiştir'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('çıkış yap'),
            onTap: () => null,
          ),
        
        ],
      ),
    );
  }
}

