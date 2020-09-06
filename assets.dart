import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class MyAssetAudio extends StatefulWidget {
  @override
  _MyAssetAudioState createState() => _MyAssetAudioState();
}

class _MyAssetAudioState extends State<MyAssetAudio>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assets Audio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
              width: 300,
              height: 100,
              child: RaisedButton(
                onPressed: () {
                  print('hi');
                  AssetsAudioPlayer.newPlayer().open(
                    Audio("assets/NICE_FLUTE(128k).mp3"),
                    showNotification: true,
                  );
                },
                child: Card(
                  color: Colors.blue,
                  child: Text('play'),
                  elevation: 5,
                ),
              )),
        ],
      ),
    );
  }
}
