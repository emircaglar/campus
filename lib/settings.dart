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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "images/campus.png",
              height: 100,
            ),
          ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8,8,8,0),
                child: RichText(
                  text: TextSpan(
                    text:
                    'A religious education program for secondary school students to build resilience against',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'polarization',
                          style: TextStyle(color: Colors.blue)),
                      TextSpan(
                        text: 'and',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                          text: 'radicalitazion.',
                          style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),


        ],
      ),
    );
  }
}
