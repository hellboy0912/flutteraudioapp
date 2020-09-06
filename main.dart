import 'package:flutter/material.dart';
import 'package:task1_app/assets.dart';
import 'package:task1_app/assetvideo.dart';
import 'package:task1_app/audio.dart';
import 'package:task1_app/homepage.dart';
import 'package:task1_app/video.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => MyHome(),
      "/asset": (context) => MyAssetAudio(),
      "/audio": (context) => MyAudio(),
      "/assetvideo": (context) => MyAsVideo(),
      "/video": (context) => MyVideo(),
    },
  ));
}
