import 'package:flutter/material.dart';
import 'package:project_1/pages/login_page.dart';


class forgot_page  extends StatelessWidget {
  const forgot_page ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Text( 
              "LETS RESET UR PASSWORD",
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
            hintText: " ENTER NEW PASSWORD",
            labelText: "NEW PASSWORD"
            ),
        ),
         SizedBox(
          height: 20.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: " CONFIRM NEW PASSWORD",
            labelText: "CONFIRM NEW PASSWORD"
            ),
        ),
        
                ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const Loginpage(),));
                }
              ),
          ]
          ),
    );
  }
}