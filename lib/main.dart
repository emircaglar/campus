import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/progress.dart';
import 'package:untitled1/providers/navigator.dart';
import 'package:untitled1/settings.dart';
import 'package:untitled1/kursen.dart';
import 'package:untitled1/public.dart';

import 'about.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => NavigatorProvider(),
      ),
    ],
    child: Bildung(),
  ));
}

class Bildung extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        dividerColor: Colors.transparent,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
//const HomePage({Key? key}) : super(key: key);
  final PageController _pageController = PageController(initialPage: 0);
  List<Widget> homePages = [Home(), About(), Kursen(), Public(), Settings()];

//homePages[context.watch()<NavigatorProvider>().currontIndex]
  @override
  Widget build(BuildContext context) {
    var currentIndex=context.watch<NavigatorProvider>().currontIndex;

    return Scaffold(
      appBar: (currentIndex==0) ? null : AppBar(
        backgroundColor: Colors.blue[100],
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.asset(
              "images/campus.png",
              height: 50,
            ),
          ),
        ),
      ),
      body: Column(
        children: [

          Flexible(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                context.read<NavigatorProvider>().currontIndex = index;
              },
              children: [Home(), About(), Kursen(), Progress()],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ), BottomNavigationBarItem(
            icon: Icon(Icons.business), // todo bura degisecek
            label: 'About',
            backgroundColor: Colors.green,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Study',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Dialog',
            backgroundColor: Colors.pink,
          ),
        ],
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          context.read<NavigatorProvider>().currontIndex = index;
          _pageController.jumpToPage(index);
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
