import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/pages/forget_page.dart';

import 'package:project_1/pages/home_page.dart';
import 'package:project_1/pages/signup_page.dart';
import 'package:project_1/utils/routes.dart';



class Loginpage extends StatefulWidget {
  const Loginpage({ Key? key }) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
  
}

class _LoginpageState extends State<Loginpage> {
String name="";
bool changeButton=false;



  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
      child: Column(
        children: [Image.asset("assets/images/loginimage.png",
        fit: BoxFit.cover,),
        Text(
          "welcome $name",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: " Enter username",
            labelText: "username"
            ),
            validator: (String? value) {
                              if (value != null && value.isEmpty) {
                                return "Username can't be empty";
                              }
    
                              return null;
                            },
            onChanged: (value){
              name=value;
              setState(() {
                
              });
            },
        ),
       
         TextFormField(
          decoration: InputDecoration(
                  hintText: " Enter password",
                   labelText: "password"
                        ),
                 validator: (value){
                     if(value!=null && value.isEmpty){
                       return"password cannot be empty";
                          }
                       return null;
                        },),
         SizedBox(
           height: 18.0,
        ),
        InkWell(
          onTap: () {
            setState(() {
              changeButton=true;
            });
          },
         child: AnimatedContainer(
           duration: Duration(seconds: 1),
           width: changeButton ? 50:100,
           height: 30,
           
           alignment: Alignment.center,
           child: Text("login", style: TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize:19 ),
             ),
             decoration: BoxDecoration(
               color: Colors.deepPurple,
               borderRadius: BorderRadius.circular(changeButton ? 50:10)
               
             ),
         ),
        ),
         
           // ElevatedButton(
              //  child: Text("Login"),
              //  style: TextButton.styleFrom(),
              //  onPressed: () {
                //  Navigator.push(context, 
               //   new MaterialPageRoute(builder: 
              //    (context) => new HomePage(),));
               // },
             // ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: Text("SignUp"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  Navigator.push(context, 
                  new MaterialPageRoute(builder: 
                  (context) => new signupPage(),));
                },
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                
              ),
              ElevatedButton(
                  child: const Text("Forgot-password"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                  Navigator.push(context,
                  new MaterialPageRoute(builder: 
                  (context) => new forgot_page(),));
                  })
        ],
      )
        
      ));
      
    
  }
}