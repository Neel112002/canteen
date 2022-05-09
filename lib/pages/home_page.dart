import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int app= 1;
    final String  name="Neel shah";


    return  Scaffold(
      appBar: AppBar(
        title: Text("Canteen Managment System"),
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
              leading: Icon(Icons.home), title: Text("Home"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
             ListTile(  
              leading: Icon(Icons.shopping_cart), title: Text("your  orders"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.favorite_border_outlined), title: Text("Favourite orders"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.settings), title: Text("Settings"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.contacts), title: Text("Contact Us"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),
             ListTile(  
              leading: Icon(Icons.help_center), title: Text("Help"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),
             ListTile(  
              leading: Icon(Icons.logout_sharp), title: Text("log Out"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),
          ]
        )
        )
    );
    
    

      
    
  }
}