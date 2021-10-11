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
                  "You Are",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "You Are",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BookContainer(
                    media: media,
                  ),BookContainer(
                    media: media,
                  )
                ],
              ),
            ],
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
  }) : super(key: key);

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("images/campus.png"),
              )),
          width: media.width * .3,
          height: media.height * .15,
        ),
        SizedBox(height: media.height * 0.02),
      ],
    );
  }
}
