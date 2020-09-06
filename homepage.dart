import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Video Player"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('click for asset audio'),
            onPressed: () {
              Navigator.pushNamed(context, "/asset");
            },
          ),
          RaisedButton(
            child: Text('click for online audio'),
            onPressed: () {
              Navigator.pushNamed(context, "/audio");
            },
          ),
          RaisedButton(
            child: Text('click for online video'),
            onPressed: () {
              Navigator.pushNamed(context, "/video");
            },
          ),
          RaisedButton(
            child: Text('click for asset video'),
            onPressed: () {
              Navigator.pushNamed(context, "/assetvideo");
            },
          ),
        ],
      ),
    );
  }
}
