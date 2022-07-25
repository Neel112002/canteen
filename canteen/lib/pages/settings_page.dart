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
    );
  }
}
