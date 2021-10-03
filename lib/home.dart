import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("You Are",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeUserContainer(
                  media: media,
                  bottumText: 'Student',
                  buttomIcon: Icons.access_alarm,
                  color: Colors.green,
                ),
                HomeUserContainer(
                  media: media,
                  bottumText: 'Teacher',
                  buttomIcon: Icons.access_alarm,
                  color: Colors.blue,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Options",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Courses',
                        buttomIcon: Icons.access_alarm,
                      ),
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Methodolgy',
                        buttomIcon: Icons.access_alarm,
                      ),
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Books',
                        buttomIcon: Icons.access_alarm,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Infographics',
                        buttomIcon: Icons.access_alarm,
                      ),
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Factsheets',
                        buttomIcon: Icons.access_alarm,
                      ),
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'About Us',
                        buttomIcon: Icons.access_alarm,
                      )
                    ],
                  ),
                ],
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
  }) : super(key: key);

  final Size media;
  final String bottumText;
  final IconData buttomIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: [
            Icon(buttomIcon),
            SizedBox(height: media.height * 0.02),
            Text(bottumText,style: TextStyle(color: Colors.white),)],
        ),
      ),
      width: media.width * .3,
      height: media.height * .15,
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
              borderRadius: BorderRadius.circular(10), color: color),
          child: Icon(buttomIcon),
          width: media.width * .3,
          height: media.height * .15,
        ),
        SizedBox(height: media.height * 0.02),
        Text(bottumText)
      ],
    );
  }
}
