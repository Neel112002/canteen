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
      drawer: Drawer(),
       );
      
    
  }
}