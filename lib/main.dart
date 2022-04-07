import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'music/inmusicdetails.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Music',
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
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        INMusicHome.routeName: (context) => const INMusicHome(),
        INMusicDetails.routeName:(context) => const INMusicDetails(),
      },
    );
  }
}
class HomePage extends StatefulWidget {
  static const routeName = '/homepage';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
         /* decoration: BoxDecoration(
            image: const DecorationImage(
                image: const AssetImage("assets/images/bghome.jpg"),
                fit: BoxFit.cover),
          ),*/
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Icon(
                    Icons.music_note,         // รูปไอคอน
                    size: 80.0,           // ขนาดไอคอน
                    color: Colors.white,   // สีไอคอน
                  ),
                ),

                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('My Music',textStyle: TextStyle(color: Colors.white)),
                      WavyAnimatedText('CLICK',textStyle: TextStyle(color: Colors.white)),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const INMusicHome()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}


