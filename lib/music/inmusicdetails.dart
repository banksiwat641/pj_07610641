import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:musicproject/pages/data/inmusicpage.dart';

import '../data.dart';

class INMusicDetails extends StatefulWidget {
  static const routeName = '/INMusicDetails';
  const INMusicDetails({Key? key}) : super(key: key);

  @override
  _INMusicDetailsState createState() => _INMusicDetailsState();
}

class _INMusicDetailsState extends State<INMusicDetails> {
  var _selectedDrawerItemIndex = 0;

  bool playing = false;

  IconData playBtn = Icons.play_arrow;

  late AudioPlayer _player;
  late AudioCache cache;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  final AudioPlayer audioPlayer = AudioPlayer();

  Widget slider() {
    return Container(
      width: 300.0,
      child: Slider.adaptive(
          activeColor: Colors.blue[800],
          inactiveColor: Colors.grey[350],
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }



  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Song;
    final _pageDataList = [
      {
        'title': data.songTitle,
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageDataList[_selectedDrawerItemIndex]['title'] as String),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: const AssetImage("assets/images/Blueming.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 48.0,
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Let's add some text title
                SizedBox(
                  height: 24.0,
                ),
                //Let's add the music cover
                Center(
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/${data.image}"),
                        )),
                  ),
                ),

                SizedBox(
                  height: 18.0,
                ),

                SizedBox(
                  height: 30.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Let's start by adding the controller
                        //let's add the time indicator text
                        Container(
                          width: 500.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              /*Text(
                                "${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                style: TextStyle(color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),*/
                              slider(),
                             /* Text(
                                "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                style: TextStyle(color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),*/
                            ],
                          ),
                        ),

                        Center(
                          child: Text(
                            data.songTitle,
                            style: TextStyle(
                                fontSize: 20.0, color: Color(0xFFFAFAFA)),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 45.0,
                              color: Colors.blue,
                              onPressed: () {
                              },
                              icon: Icon(
                                Icons.skip_previous,
                              ),
                            ),
                            IconButton(
                              iconSize: 62.0,
                              color: Colors.blue[800],
                              onPressed: () {
                                //here we will add the functionality of the play button
                                if (!playing) {
                                  //now let's play the song
                                  audioPlayer.play('${data.song}');
                                  setState(() {
                                    playBtn = Icons.pause;
                                    playing = true;

                                  });
                                } else {
                                  audioPlayer.pause();
                                  setState(() {
                                    playBtn = Icons.play_arrow;
                                    playing = false;
                                  });
                                }
                              },
                              icon: Icon(
                                playBtn,
                              ),
                            ),
                            IconButton(
                              iconSize: 45.0,
                              color: Colors.blue,
                              onPressed: () {},
                              icon: Icon(
                                Icons.skip_next,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}