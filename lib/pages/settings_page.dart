import 'package:flutter/material.dart';

import 'package:project_1/pages/home_page.dart';
import 'package:project_1/pages/login_page.dart';
import 'package:project_1/pages/accsettings_page.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Color.fromARGB(255, 200, 194, 194),
            height: 20,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle_sharp,
              size: 30,
            ),
            title: Text(
              "Account Settings",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new AccSettings(),
                  ));
            },
          ),
          Divider(
            color: Color.fromARGB(255, 200, 194, 194),
            height: 20,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
        ],
      ),
      // drawer: Drawer(
      //     child: ListView(padding: EdgeInsets.zero, children: [
      //   const UserAccountsDrawerHeader(
      //     accountName: Text("XYZ"),
      //     accountEmail: Text("xyz@gmail.com"),
      //     currentAccountPicture: CircleAvatar(
      //       backgroundColor: Colors.orange,
      //       child: Text(
      //         "A",
      //         style: TextStyle(fontSize: 40.0),
      //       ),
      //     ),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.home),
      //     title: Text("Home"),
      //     onTap: () {
      //       Navigator.push(
      //           context,
      //           new MaterialPageRoute(
      //             builder: (context) => new HomePage(),
      //           ));
      //     },
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.shopping_cart),
      //     title: Text("Your Orders"),
      //     onTap: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.favorite_border_outlined),
      //     title: Text("Favourite orders"),
      //     onTap: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.settings),
      //     title: Text("Settings"),
      //     onTap: () {
      //       Navigator.push(
      //           context,
      //           new MaterialPageRoute(
      //             builder: (context) => new SettingsPage(),
      //           ));
      //     },
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.contacts),
      //     title: Text("Contact Us"),
      //     onTap: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.help_center),
      //     title: Text("Help"),
      //     onTap: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.logout_sharp),
      //     title: Text("Log Out"),
      //     onTap: () {
      //       Navigator.push(
      //           context,
      //           new MaterialPageRoute(
      //             builder: (context) => new Loginpage(),
      //           ));
      //     },
      //   ),
      // ]
      // )
      // )
    );
  }
}
