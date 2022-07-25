import 'package:flutter/material.dart';
import 'package:project_1/pages/detail_page.dart';
import 'package:project_1/pages/login_page.dart';
import 'package:project_1/pages/accsettings_page.dart';

class HomePage extends StatefulWidget {
  // String username;
  // HomePage({required this.username});
  // @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get username => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 25.0, top: 45.0, right: 25.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "My Canteen",
                        style: TextStyle(
                          fontSize: 37.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // CircleAvatar(
                      //     backgroundImage: NetworkImage(
                      //         "https://images.pexels.com/photos/2787310/pexels-photo-2787310.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                      //   ),
                      drawer(
                          "https://images.pexels.com/photos/2787310/pexels-photo-2787310.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 40.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildTopChip("healthy", true),
                        buildTopChip("italian", false),
                        buildTopChip("mexican", false),
                        buildTopChip("asian", false),
                        buildTopChip("chinese", false),
                        buildTopChip("haitian", false),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Expanded(
                  child: ListView(
                children: <Widget>[
                  buildItem(
                      "Vadapav",
                      "123 reviews = S. Oxford 13th",
                      "https://as1.ftcdn.net/v2/jpg/01/16/14/14/1000_F_116141457_gj7IMZ5ll0j1uGqXQ6lXjF4vnpgL5tkc.jpg",
                      4.5),
                  buildItem(
                      "Sandwich",
                      "98 reviews",
                      "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
                      4.5),
                  buildItem(
                      "Panipuri",
                      "123 reviews",
                      "https://as2.ftcdn.net/v2/jpg/02/32/25/25/1000_F_232252535_SfpqgflLtxgt25BONWrJx9Z5eSxTiSj0.jpg",
                      4.5),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildItem(
      String title, String subTitle, String url, double rating) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => DetailPage(url)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12.0),
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: url,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text(
                      rating.toString(),
                      style: TextStyle(color: Colors.white),
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

  Container buildTopChip(String label, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Chip(
        padding: EdgeInsets.all(8.0),
        label: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        backgroundColor: isActive ? Colors.orange : Colors.grey,
      ),
    );
  }

  GestureDetector drawer(String url) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => Drawer()));
        },
        child: Column(children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/2787310/pexels-photo-2787310.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                )
              ])
        ]));
  }
}

class Drawer extends StatelessWidget {
  const Drawer({Key? key}) : super(key: key);

  // String username;
  // Drawer({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Account Settings"), backgroundColor: Colors.orange),
        body: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            height: 260,
            color: Colors.orange[300],
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/2787310/pexels-photo-2787310.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 30,
                    width: 400,
                    child: Center(
                      child: Text(
                        'Jenil',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 400,
                    child: Center(
                      child: Text(
                        "jenil@gmail.com",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(vertical: 0.0),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 20)),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new HomePage(),
                        ));
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text("Your Orders"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: const Icon(Icons.favorite_border_outlined),
                  title: const Text("Favourite orders"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Settings"),
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new HomePage(),
                        ));
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: const Icon(Icons.contacts),
                  title: const Text("Contact Us"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: const Icon(Icons.help_center),
                  title: const Text("Help"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  leading: const Icon(Icons.logout_sharp),
                  title: const Text("Log Out"),
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new Loginpage(),
                        ));
                  },
                ),
              ],
            ),
          )
          // SizedBox(
          //   height: 10,
          // ),
          // ListTile(
          //   leading: Icon(
          //     Icons.sentiment_satisfied_alt,
          //     size: 30,
          //   ),
          //   title: Text(
          //     "Change Username",
          //     style: TextStyle(fontSize: 18),
          //   ),
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       new MaterialPageRoute(
          //         builder: (context) => new EditProfile(),
          //       ));
          // },
        ]));
  }
}
