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
            const SizedBox(
           height: 65,
        ),
            Text( 
              "LET'S RESET YOUR PASSWORD",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
         SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
          child: Column(
            children: [
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
            ],
          ),
        ),
        const SizedBox(
           height: 30,
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