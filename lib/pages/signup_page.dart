import 'package:flutter/material.dart';
import 'package:project_1/pages/home_page.dart';

class signupPage extends StatelessWidget {
  const signupPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Material(
      color: Colors.white,
      child: Column(
        children: [Image.asset("assets/images/loginimage.png",
        fit: BoxFit.cover,),
        Text(
          "welcome",
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
            labelText: " username"
            ),
        ),
         TextFormField(
          decoration: InputDecoration(
            hintText: " confirm username",
            labelText: " confirm  username"
            ),
        ),
         TextFormField(
          decoration: InputDecoration(
            hintText: " Enter new password",
            labelText: " new password"
         )),
          TextFormField(
          decoration: InputDecoration(
            hintText: "  confirm password",
            labelText: " confirm password"
         )),
             ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const HomePage(),));
                },
              ),
             
            
        ],
        
      ));
      
    
  }
}
   