import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/kursen.dart';
import 'package:untitled1/lehrer.dart';
import 'package:untitled1/verein.dart';

import 'aktuelles.dart';
import 'books.dart';
import 'courses/ersteKurs.dart';
import 'datenschutz.dart';
import 'impressum.dart';
import 'kontakt.dart';
import 'lernförderung.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              child: Image.asset("images/akademi1.png", height: 50),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      VereinoptionsContainer(
                        media: media,
                        bottumText: 'VEREIN',
                          navigate: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Verein()),
                            );
                          }
                      ),
                      VereinoptionsContainer(
                          media: media,
                          bottumText: 'LERNFÖRDERUNG',
                          navigate: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Lernforderung()),
                            );
                          }),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      VereinoptionsContainer(
                          media: media,
                          bottumText: 'AKTUELLES',
                          navigate: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Aktuelles()),
                            );
                          }
                      ),
                      VereinoptionsContainer(
                          media: media,
                          bottumText: 'KONTAKT',
                          navigate: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Kontakt()),
                            );
                          }),
                    ],
                  ), Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      VereinoptionsContainer(
                          media: media,
                          bottumText: 'IMPRESSUM',
                          navigate: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Impressum()),
                            );
                          }
                      ),
                      VereinoptionsContainer(
                          media: media,
                          bottumText: 'DATENSCHUTZ',
                          navigate: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Datenschutz()),
                            );
                          }),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Optionen",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeoptionsContainer(
                          media: media,
                          bottumText: 'Startseite',
                          buttomIcon: 'images/a11.jpg',
                        ),
                        HomeoptionsContainer(
                            media: media,
                            bottumText: 'Kurse',
                            buttomIcon: 'images/a11.jpg',
                            navigate: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Kursen()),
                              );
                            }),
                        HomeoptionsContainer(
                            media: media,
                            bottumText: 'Books',
                            buttomIcon: 'images/a11.jpg',
                            navigate: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Books()),
                              );
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeoptionsContainer(
                            media: media,
                            bottumText: 'Personen',
                            buttomIcon: 'images/a11.jpg',
                            navigate: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Lehrer()),
                              );
                            }),
                        HomeoptionsContainer(
                          media: media,
                          bottumText: 'Über uns',
                          buttomIcon: 'images/a11.jpg',
                        ),
                        HomeoptionsContainer(
                            media: media,
                            bottumText: 'Quelle',
                            buttomIcon: 'images/a11.jpg',
                            navigate: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuelleOnline()),
                              );
                            })
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeoptionsContainer extends StatelessWidget {
  const HomeoptionsContainer({
    Key? key,
    required this.media,
    required this.bottumText,
    required this.buttomIcon,
    this.navigate,
  }) : super(key: key);

  final Size media;
  final String bottumText;
  final String buttomIcon;
  final Function()? navigate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), border: Border.all()),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              Image.asset(
                buttomIcon,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(height: media.height * 0.02),
              Text(
                bottumText,
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        width: media.width * .25,
        // height: media.height * .13,
      ),
    );
  }
}

class HomeUserContainer extends StatelessWidget {
  const HomeUserContainer({
    Key? key,
    required this.media,
    required this.bottumText,
    required this.buttomIcon,
    required this.color,
  }) : super(key: key);

  final Size media;
  final String bottumText;
  final IconData buttomIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              border: Border.all()),
          child: Icon(buttomIcon),
          width: media.width * .25,
          height: media.height * .13,
        ),
        SizedBox(height: media.height * 0.02),
        Text(bottumText)
      ],
    );
  }
}

class VereinoptionsContainer extends StatelessWidget {
  const VereinoptionsContainer({
    Key? key,
    required this.media,
    required this.bottumText,
    this.navigate,
  }) : super(key: key);
  final Size media;
  final String bottumText;
  final Function()? navigate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), border: Border.all()),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Text(
                bottumText,
                style: TextStyle(color: Colors.black,fontSize: 10),
              )
            ],
          ),
        ),
        width: media.width * .30,
        //height: media.height * .05,
      ),
    );
  }
}
