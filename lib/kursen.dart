import 'package:flutter/material.dart';

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
                                media: media, color: Colors.grey, title: "ali"),
                            HomeUser(
                                media: media, color: Colors.grey, title: "ali"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomeUser(
                                media: media, color: Colors.grey, title: "ali"),
                            HomeUser(
                                media: media, color: Colors.grey, title: "ali"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomeUser(
                                media: media, color: Colors.grey, title: "ali"),
                            HomeUser(
                                media: media, color: Colors.grey, title: "ali"),
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
                  StudyContainer(media: media,title:"About us", zweitetitle:"Letzte Dialog Information about the project Information about the project Information about the project"),
                  StudyContainer(media: media,title:"About us",zweitetitle:"Letzte Dialog Information about the project Information about the project Information about the project"),
                  StudyContainer(media: media,title:"About us",zweitetitle:"Letzte Dialog Information about the project Information about the project Information about the project"),

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
  }) : super(key: key);

  final Size media;
  final String title;
  final String zweitetitle;

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
            style: TextStyle(fontSize: 24),
          ),
          Divider(),

          Text(
              zweitetitle),
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
  }) : super(key: key);

  final Size media;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
