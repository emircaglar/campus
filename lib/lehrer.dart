
import 'package:flutter/material.dart';

class Lehrer extends StatelessWidget {
  const Lehrer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Column(children: [

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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LehrerContainer(media: media, image:"images/silhouette.jpg",bottumText: 'Frau X' ),
                ],
              ),
            )


          ],),Column(children: [

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Allgemeiner B1 Kurs",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LehrerContainer(media: media, image:"images/silhouette.jpg",bottumText: 'Frau Y' ),
                ],
              ),
            )


          ],),
        ],
      ),
    );
  }
}

class LehrerContainer extends StatelessWidget {
  const LehrerContainer({
    Key? key,
    required this.media,
    required this.image,
    required this.bottumText,
  }) : super(key: key);

  final Size media;
  final String image;
  final String bottumText;

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
              ),
          ),
          width: media.width * .3,
          height: media.height * .15,
        ),
        SizedBox(height: media.height * 0.02),
        Text(bottumText)
      ],
    );
  }
}
