import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'music/inmusicdetails.dart';


class INMusicHome extends StatefulWidget {
  static const routeName = '/INMusichome';
  const INMusicHome({Key? key}) : super(key: key);

  @override
  _INMusicHomeState createState() => _INMusicHomeState();
}

class _INMusicHomeState extends State<INMusicHome> {
  final items = [
    Song(
      songTitle: 'above the time',
      image: 'above the time.jpg',
      song: 'assets/sound/above the time.mp3',
    ),
    Song(
        songTitle: 'Ah puh',
        image: 'Ah puh.jpg',
        song: 'assets/sound/Ah puh.mp3'
    ),
    Song(
      songTitle: 'Autumn morning',
      image: 'Autumn morning.jpg',
      song: 'assets/sound/Autumn morning.mp3',
    ),
    Song(
      songTitle: 'BBIBBI',
      image: 'BBIBBI.jpg',
      song: 'assets/sound/BBIBBI.mp3',
    ),
    Song(
      songTitle: 'Blueming',
      image: 'Blueming.jpg',
      song: 'assets/sound/Blueming.mp3',
    ),
    Song(
      songTitle: 'Celebrity',
      image: 'Celebrity.jpg',
      song: 'assets/sound/Celebrity.mp3',
    ),
    Song(
      songTitle: 'Dear Name',
      image: 'Dear Name.jpg',
      song: 'assets/sound/Dear Name.mp3',
    ),
    Song(
      songTitle: 'eight',
      image: 'eight.jpg',
      song: 'assets/sound/eight.mp3',
    ),
    Song(
      songTitle: 'Ending Scene',
      image: 'Ending Scene.png',
      song: 'assets/sound/Ending Scene.mp3',
    ),
    Song(
      songTitle: 'Every End of the Day',
      image: 'Every End of the Day.jpg',
      song: 'assets/sound/Every End of the Day.mp3',
    ),
    Song(
      songTitle: 'Give You My Heart',
      image: 'Give You My Heart.jpg',
      song: 'assets/sound/Give You My Heart.mp3',
    ),
    Song(
      songTitle: 'Good Day',
      image: 'Good Day.jpg',
      song: 'assets/sound/Good Day.mp3',
    ),
    Song(
      songTitle: 'Hold My Hand',
      image: 'Hold My Hand.jpg',
      song: 'assets/sound/Hold My Hand.mp3',
    ),
    Song(
      songTitle: 'Jam Jam',
      image: 'Jam-Jam.jpg',
      song: 'assets/sound/Jam Jam.mp3',
    ),
    Song(
      songTitle: 'Lilac',
      image: 'Lilac.jpg',
      song: 'assets/sound/Lilac.mp3',
    ),
    Song(
      songTitle: 'Love Poem',
      image: 'Love Poem.jpg',
      song: 'assets/sound/Love Poem.mp3',
    ),
    Song(
      songTitle: 'My Old Story',
      image: 'My Old Story.jpg',
      song: 'assets/sound/My Old Story.mp3',
    ),
    Song(
      songTitle: 'My sea',
      image: 'My sea.jpg',
      song: 'assets/sound/My sea.mp3',
    ),
    Song(
      songTitle: 'next stop',
      image: 'next stop.jpg',
      song: 'assets/sound/next stop.mp3',
    ),
    Song(
      songTitle: 'Our Happy Ending',
      image: 'Our Happy Ending.jpg',
      song: 'assets/sound/Our Happy Ending.mp3',
    ),
    Song(
      songTitle: 'Palette',
      image: 'Palette.jpg',
      song: 'assets/sound/Palette.mp3',
    ),
    Song(
      songTitle: 'strawberry moon',
      image: 'strawberry moon.jpg',
      song: 'assets/sound/strawberry moon.mp3',
    ),
    Song(
      songTitle: 'Through the Night',
      image: 'Through the Night.jpg',
      song: 'assets/sound/Through the Night.mp3',
    ),
    Song(
      songTitle: 'Twenty Three',
      image: 'Twenty Three.png',
      song: 'assets/sound/Twenty Three.mp3',
    ),
    Song(
      songTitle: 'Winter Sleep',
      image: 'Winter Sleep.jpg',
      song: 'assets/sound/Winter Sleep.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final mqHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2962FF),
        title: const Text(
          'MY MUSIC',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
       // color: Color(0xFFC1C6E4),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.0,-1.0),
                end: Alignment(0.0,1.0),
                colors: [
                  Theme.of(context).primaryColorLight,
                  Theme.of(context).primaryColorLight,
                  Theme.of(context).primaryColorDark,
                ]
            )
        ),
        child: Column(
          children:<Widget>[
            Container(
              //width: 300,
              height: 300,
              decoration: ShapeDecoration(
                 // color: Colors.red[300],
                image: DecorationImage(
                    image: AssetImage("assets/images/bgIU.jpg"),
                    fit: BoxFit.cover),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('IU',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),

                    child: FloatingActionButton(
                      elevation: 80,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Random ran= new Random();
                        var r = ran.nextInt(26);
                        var item = items[r];
                        Navigator.pushNamed(
                          context,
                          INMusicDetails.routeName,
                          arguments: Song(songTitle: item.songTitle,  image: '${item.image}', song: '${item.song}'),

                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: mqHeight/2 ,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment(0.0,-1.0),
                      end: Alignment(0.0,1.0),
                      colors: [
                        Theme.of(context).primaryColorLight,
                        Theme.of(context).primaryColorLight,
                        Theme.of(context).primaryColorDark,
                      ]
                  )
              ),
              child: Stack(
                overflow: Overflow.visible,
               // alignment: Alignment.topCenter,
                children:<Widget>[
                  Container(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        var item = items[index];
                        return Card(
                          color: Colors.white.withOpacity(0.1),
                            margin: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  INMusicDetails.routeName,
                                  arguments: Song(songTitle: item.songTitle,  image: '${item.image}', song: '${item.song}'),

                                );
                                //print(item);
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/${item.image}',
                                            width: 60.0, height: 60.0, fit: BoxFit.fill),
                                        /*Icon(Icons.person),*/
                                        SizedBox(width: 1.0),
                                        Container(
                                          margin: const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  item.songTitle,
                                                  style: TextStyle(
                                                      fontSize: 15.0, color: Colors.white),
                                                 // textAlign: TextAlign.left,
                                                ),
                                              ),

                                            ],
                                          ),

                                        ),

                                      ],

                                    ),
                                  ),
                                ],
                              ),
                            ));
                      },
                    ),
                  ),

                 /* Container(
                    color: Colors.red,
                    //width: 300,
                    height: 300,
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Song {
  final String songTitle;
  final String image;
  final String song;
  Song({
    required this.songTitle,
    required this.image,
    required this.song,
  });
}