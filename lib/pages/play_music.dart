import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Play Sound in Flutter App"),
            backgroundColor: Colors.redAccent
        ),
        body: Container(
            margin: EdgeInsets.only(top:50),
            child: Wrap(
              spacing: 10,
              children: [
                ElevatedButton.icon(
                    onPressed: () async {
                      AssetsAudioPlayer.newPlayer().open(
                        Audio("assets/audio/music.mp3"),
                        autoStart: true,
                        showNotification: true,
                      );
                    },
                    icon: Icon(Icons.play_arrow),
                    label:Text("Play")
                ),

                ElevatedButton.icon(
                    onPressed: () async {
                    },
                    icon: Icon(Icons.stop),
                    label:Text("Stop")
                ),

              ],
            )

        )
    );
  }
}