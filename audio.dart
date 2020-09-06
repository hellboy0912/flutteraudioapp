import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class MyAudio extends StatefulWidget {
  @override
  _MyAudioState createState() => _MyAudioState();
}

class _MyAudioState extends State<MyAudio> with SingleTickerProviderStateMixin {
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
        title: Text('Online Audio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
              width: 300,
              height: 100,
              child: RaisedButton(
                onPressed: () async {
                  print('hi');
                  String path =
                      'https://raw.githubusercontent.com/hellboy0912/myrepo/master/Narnia_Soundtrack_-_Narnia_Lullaby(128k).mp3';
                  final assetsAudioPlayer = AssetsAudioPlayer();
                  await assetsAudioPlayer.open(
                    Audio.network(path),
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
