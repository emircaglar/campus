import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/providers/navigator.dart';
import 'package:untitled1/settings.dart';
import 'package:untitled1/study.dart';
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
  List<Widget> homePages = [Home(), About(), Study(),Public(),Settings()];

//homePages[context.watch()<NavigatorProvider>().currontIndex]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              child:Image.asset(
                "images/campus.png",
                height: 50,
              ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8,8,8,0),
            child: RichText(
              text: TextSpan(
                text:
                'A religious education program for secondary school students to build resilience against',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: 'polarization',
                      style: TextStyle(color: Colors.blue)),
                  TextSpan(
                    text: 'and',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                      text: 'radicalitazion.',
                      style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
          ),




          Flexible(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                context.read<NavigatorProvider>().currontIndex=index;
              },
              children: [Home(), About(), Study(),Public(), Settings()],
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
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business), // todo bura degisecek
            label: 'About',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Study',
            backgroundColor: Colors.purple,
          ),BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Public',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
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
        currentIndex: context.watch<NavigatorProvider>().currontIndex,
      ),
    );
  }
}
