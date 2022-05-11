import 'package:flutter/material.dart';
import 'package:project_1/pages/forget_page.dart';
import 'package:project_1/pages/login_page.dart';
import 'package:project_1/pages/settings_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int app= 1;
    final String  name="Neel shah";


    return  Scaffold(
      appBar: AppBar(
        title: const Text("Canteen Managment System"),
      ),
        body:Center(
        child:Container(
           child: Text("welcome  to my $app app of $name"),
         ),
        ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:[
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
              leading: const Icon(Icons.home), title: const Text("Home"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
             ListTile(  
              leading: const Icon(Icons.shopping_cart), title: const Text("your  orders"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: const Icon(Icons.favorite_border_outlined), title: const Text("Favourite orders"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: const Icon(Icons.settings), title: const Text("Settings"),  
             onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new SettingsPage(),
                  ));
            }, 
            ),  
            ListTile(  
              leading: const Icon(Icons.contacts), title: const Text("Contact Us"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),
             ListTile(  
              leading: const Icon(Icons.help_center), title: const Text("Help"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),
             ListTile(  
              leading: const Icon(Icons.logout_sharp), title: const Text("log Out"),  
              onTap: () {  
                Navigator.push(context,
                  new MaterialPageRoute(builder: 
                  (context) => new Loginpage(),));  
              },  
            ),
          ]
        )
        )
    );
    
    

      
    
  }
}