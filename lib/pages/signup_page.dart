import 'package:flutter/material.dart';
import 'package:project_1/pages/home_page.dart';
import 'package:project_1/pages/login_page.dart';

class signupPage extends StatelessWidget {
  const signupPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Material(
      color: Colors.white,
      child: Column(
        children: [Image.asset("assets/images/loginimage.png",
        fit: BoxFit.cover,),
        const Text(
          "welcome",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: " Enter college email",
            labelText: " College email"
            ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: " Enter username",
            labelText: " username"
            ),
        ),
       const SizedBox(
           height: 8,
        ),
         TextFormField(
          decoration: const InputDecoration(
            hintText: " Enter new password",
            labelText: " new password"
         )),
         const SizedBox(
           height: 8,
        ),
          TextFormField(
          decoration: const InputDecoration(
            hintText: "  confirm password",
            labelText: " confirm password"
         )),
         const SizedBox(
           height: 30,
        ),
             ElevatedButton(
                child: const Text("Signup"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const Loginpage(),));
                },
              ),
             
            
        ],
        
      ));
      
    
  }
}
   