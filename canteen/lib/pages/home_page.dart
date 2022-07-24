import 'package:flutter/material.dart';
import 'package:project_1/pages/forget_page.dart';
import 'package:project_1/pages/login_page.dart';
import 'package:project_1/pages/order.dart';
import 'package:project_1/pages/settings_page.dart';

import 'accsettings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int app = 1;
    final String name = "Neel shah";

    return Scaffold(
        appBar: AppBar(
          title: const Text("Canteen Managment System"),
        ),
        // body: Container(
        //   margin: const EdgeInsets.only(
        //       left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
        // child: Column(
        //   children: [
        //     Image.asset(
        //       "assets/images/vadapav.jpg",
        //       width: 150,
        //       height: 150,
        //       fit: BoxFit.cover,
        //     ),
        //     SizedBox(
        //       height: 20.0,
        //     ),
        //     Image.asset(
        //       "assets/images/vadapav.jpg",
        //       width: 150,
        //       height: 150,
        //       fit: BoxFit.cover,
        //     ),
        //   ],
        // ),
        body: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new OrderPage(),
                  ));
            },
            child: Ink.image(
              image: AssetImage('assets/images/vadapav.jpg'),
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Abhishek Mishra"),
            accountEmail: Text("abhishekm977@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                "A",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text("your  orders"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border_outlined),
            title: const Text("Favourite orders"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new SettingsPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text("Contact Us"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_center),
            title: const Text("Help"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout_sharp),
            title: const Text("log Out"),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new Loginpage(),
                  ));
            },
          ),
        ])));
  }
}
