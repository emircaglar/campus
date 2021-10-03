import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Kursen",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Image.asset(
            "images/campus.png",
            height: 50,
          ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              Text("**********************"),
              Text("**********************"),
              Text("**********************"),
              Text("**********************"),
              Text("**********************"),



            ],
          ),
        ),


        ],
      ),
    );
  }
}
