import 'package:flutter/material.dart';

import 'accsettings_page.dart';

class EditPass extends StatelessWidget {
  const EditPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Account Settings"),
        ),
        body: Column(children: [
          SizedBox(
            height: 10,
          ),
          TextFormField(
              decoration: const InputDecoration(
                  hintText: " Old Password", labelText: " Enter old password")),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
              decoration: const InputDecoration(
                  hintText: " New Password", labelText: " Enter new password")),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
              decoration: const InputDecoration(
                  hintText: " New Password", labelText: " Confirm password")),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            child: const Text("Submit"),
            style: TextButton.styleFrom(),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccSettings(),
                  ));
            },
          ),
        ]));
  }
}
