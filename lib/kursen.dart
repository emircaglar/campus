import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'courses/deep.dart';
import 'courses/deepModul.dart';
import 'courses/ersteKurs.dart';
import 'webview.dart';
import 'home.dart';

class Kursen extends StatelessWidget {
  const Kursen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: ExpansionTile(
                      textColor: Colors.black,
                      trailing: Text(""),
                      title: Text(
                        "Kursen",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                          "Kursen teilnehmerInformation about the project Information about the project"),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomeUser(
                                media: media, color: Colors.grey, title: "Erste A1",url: 'https://www.deutsch-to-go.de/',),
                            HomeUser(
                                media: media, color: Colors.grey, title: "Zweitete A1",url:'https://www.deutsch-to-go.de/',),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomeUser(
                                media: media, color: Colors.grey, title: "Erste A2",url:'https://www.deutsch-to-go.de/',),
                            HomeUser(
                                media: media, color: Colors.grey, title: "Zweitete A2",url: "https://opencart.abstracta.us/index.php?route=account/account",),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomeUser(
                                media: media, color: Colors.grey, title: "Erste B1",url: "https://opencart.abstracta.us/index.php?route=account/account",),
                            HomeUser(
                                media: media, color: Colors.grey, title: "Zweitete B1",url: "https://opencart.abstracta.us/index.php?route=account/account",),
                          ],
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 6.0, vertical: 24),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[100]),
                    width: media.width * .9,
                  ),
                  GestureDetector(
                    onTap:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => erste()),
                      );
                    } ,
                    child: StudyContainer(media: media,title:"Allgemeiner Kurs", zweitetitle:'Beginn: 04.10.202',drittetitle: 'Mo-Do. 17:30 bis 20:40 Uhr', ),
                  ),
                  GestureDetector(

                      onTap:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DeepModul(deeplist: [DeepModulItem(),DeepModulItem(),DeepModulItem(),DeepModulItem(),DeepModulItem(),DeepModulItem()],)),
                        );
                      } ,
                      child: StudyContainer(media: media,title:"Zweitschriftlernerkurs",zweitetitle:"Beginn: 26.01.2022",drittetitle: '09:00 bis 13:00 Uhr',)),
                  StudyContainer(media: media,title:"Allgemeiner Kurs",zweitetitle:"Beginn: 14.03.2021",drittetitle: '09:00 bis 13:00 Uhr',),
                  StudyContainer(media: media,title:"Allgemeiner Kurs",zweitetitle:"Beginn: 14.03.2022",drittetitle: 'Mo-Do. 18:00 bis 21:15 Uhr',),
                  StudyContainer(media: media,title:"Alphabetisierungskurs",zweitetitle:"Beginn: 28.03.2022",drittetitle: '09:00 bis 13:00 Uhr',),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class StudyContainer extends StatelessWidget {
  const StudyContainer({
    Key? key,
    required this.media,
    required this.title,
    required this.zweitetitle,
    required this.drittetitle,
  }) : super(key: key);

  final Size media;
  final String title;
  final String zweitetitle;
  final String drittetitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue[100]),
      width: media.width * .9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24,),
          ),
          Divider(),

          Text(
              zweitetitle,textAlign: TextAlign.start,),
          Divider(),
          Text(
              drittetitle,textAlign: TextAlign.start,),
        ],
      ),
    );
  }
}

class HomeUser extends StatelessWidget {
  const HomeUser({
    Key? key,
    required this.media,
    required this.title,
    required this.color,
    required this.url,
  }) : super(key: key);

  final Size media;
  final String title;
  final String url;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push( context, MaterialPageRoute(builder: (context) => WebViewExample(url)), );},
      child: Container(
        margin: EdgeInsets.only(bottom: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        width: media.width * .3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
