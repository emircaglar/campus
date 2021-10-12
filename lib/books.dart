import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  const Books({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                 child: Text(
                   "Büchern",
                   textAlign: TextAlign.start,
                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                 ),
               ),
             ],
           ),
          Expanded (
            child: SingleChildScrollView (
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          "Allgemeiner Kurs",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BookContainer(
                        media: media,image:"images/b11.png",
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          "Zweitschriftlernerkurs",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BookContainer(
                        media: media,image:"images/b11.png",
                      ),BookContainer(
                        media: media,image:"images/a11.jpg",
                      )
                    ],

                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          "Alphabetisierungskurs",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BookContainer(
                        media: media,image:"images/b11.png",
                      ),BookContainer(
                        media: media,image:"images/a11.jpg",
                      )
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BookContainer(
                        media: media,image:"images/b11.png",
                      ),BookContainer(
                        media: media,image:"images/a11.jpg",
                      )
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BookContainer(
                        media: media,image:"images/b11.png",
                      ),BookContainer(
                        media: media,image:"images/a11.jpg",
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BookContainer extends StatelessWidget {
  const BookContainer({
    Key? key,
    required this.media,
    required this.image,
  }) : super(key: key);

  final Size media;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
              )),
          width: media.width * .3,
          height: media.height * .15,
        ),
        SizedBox(height: media.height * 0.02),
      ],
    );
  }
}
