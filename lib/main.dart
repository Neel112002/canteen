import 'package:flutter/material.dart';
import 'package:project_1/pages/forget_page.dart';

import 'package:project_1/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/pages/login_page.dart';
import 'package:project_1/pages/signup_page.dart';
import 'package:project_1/utils/routes.dart';



void main(){
  runApp(MyApp()); 
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData( 
        primarySwatch: Colors.deepPurple,
       fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => Loginpage(),
         MyRoutes.homeRoute :(context) => HomePage(),
         MyRoutes.signupRoute:(context) => signupPage(),
        MyRoutes.forgotRoute:(context) => forgot_page(),
      },
      );
  }
}
