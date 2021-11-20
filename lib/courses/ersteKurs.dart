import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../webview.dart';

class QuelleOnline extends StatelessWidget {
  const QuelleOnline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                kursen(size: media,kursTitle:"haci ahmet" ,color:Colors.amber ,image:"images/ahmed.jpg" ,text: "aaa",link: "https://www.youtube.com/channel/UCmPeUJLU5jkhpxMw4iUbf4Q",),
                kursen(size: media,kursTitle:"ideal deutsch lernen" ,color:Colors.amber ,image:"images/idealdeutsch.jpg" ,text: "aaa",link: "https://www.youtube.com/c/IdealDeutschLernen",),
               ]
              ),
            ),  Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                kursen(size: media,kursTitle:"karsilastimali almanca" ,color:Colors.amber ,image:"images/karislas.jpg" ,text: "aaa",link: "https://www.youtube.com/channel/UCLtuEI0LZKcqyzoTYgM0C3g",),
                kursen(size: media,kursTitle:"bbb" ,color:Colors.amber ,image:"images/a11.jpg" ,text: "aaa",link: "https://www.youtube.com/",),
                ]
              ),
            ),  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              kursen(size: media,kursTitle:"bbb" ,color:Colors.amber ,image:"images/a11.jpg",text: "aaa",link: "https://www.youtube.com/",),
              kursen(size: media,kursTitle:"bbb" ,color:Colors.amber ,image:"images/a11.jpg",text: "aaa",link: "https://www.youtube.com/",),
              ]
            ),

          ],
        ),
      ) ,
    );
  }
}

class kursen extends StatelessWidget {
  const kursen({Key? key,required this.size, required this.kursTitle, required this.link,required this.color, required this.image, required this.text}) : super(key: key);



  final Size size;
  final String kursTitle;
  final Color color;
  final String image;
  final String text;
  final String link;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WebViewExample(link)),
        );
      },
      child: Container(

        width: size.width*.4,

        child: Column(
          children: [
            Container(
              child: Text(kursTitle),
              decoration: BoxDecoration(
                color: Colors.amber
              ),
            ), Container(

              child: Image.asset(image,fit: BoxFit.fitWidth,),

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
      ),
    );
  }
}
