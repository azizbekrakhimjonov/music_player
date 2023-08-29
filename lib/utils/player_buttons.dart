import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


class PlayButton extends StatelessWidget {

  final double width;
  final double height;
  final double size;
  final icon;
  final String btnValue;
  late bool btnpause;

  // const PlayButton({Key? key,
  //   required this._width,
  //   required this._height,
  //   required this._size,
  //   required this._icon,
  // }) : super({key: key});
  // PlayButton(this.width, this.height, this.size, this.icon, {super.key});

  PlayButton({Key? key,
    required this.width,
    required this.height,
    required this.size,
    required this.icon,
    required this.btnValue,
    required this.btnpause
  }) : super(key: key);

  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {

        print(btnValue);
        if (btnValue=='pause' && btnpause)
        {
          btnpause = false;
          assetsAudioPlayer.open(
            Audio("assets/audios/music.mp3"),
          );
        }else{
          btnpause = !btnpause;
          assetsAudioPlayer.pause();
        }
      },

        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                offset: Offset(-6.0, -6.0),
                blurRadius: 16.0,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: Offset(6.0, 6.0),
                blurRadius: 16.0,
              ),
            ],
            color: Color(0xFF292D32),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
                icon,
                color: Colors.blue,
                size: size,)
        ),
    );
  }
}