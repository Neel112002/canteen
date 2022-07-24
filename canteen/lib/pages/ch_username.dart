import 'package:flutter/material.dart';

import 'accsettings_page.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

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
                  hintText: " Enter new username", labelText: " new username")),
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
