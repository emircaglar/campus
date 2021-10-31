

import 'package:flutter/material.dart';

import 'deepModul.dart';

class DeepModul extends StatelessWidget {
  const DeepModul({Key? key,required this.deeplist}) : super(key: key);

  final List<DeepModulItem> deeplist;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 2/4,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8
        ),
        itemCount: deeplist.length,
        itemBuilder: (context,index){
          return DeepModulBookWidget();
        }

      ),
    );
  }
}

class DeepModulBookWidget extends StatelessWidget {
  const DeepModulBookWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

     // width: size.width*.4,

      child: Column(
        children: [
          Container(
            child: Text("kursTitle"),
            decoration: BoxDecoration(
                color: Colors.amber
            ),
          ), Container(

            child: Image.asset("images/a11.jpg"),

          ), Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              child: Text("kurs fur die Menschen"),
              decoration: BoxDecoration(
                  color: Colors.amber
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all()),
    );
  }
}
