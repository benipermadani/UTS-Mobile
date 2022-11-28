import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
      home: new Halsatu(),
      title: "Navigasi",
      routes: <String, WidgetBuilder>{
        '/Halsatu': (BuildContext context) => new Halsatu(),
        '/Haldua': (BuildContext context) => new Haldua(),
        '/Haltiga': (BuildContext context) => new Haltiga(),
      }));
}

class Halsatu extends StatelessWidget {
  const Halsatu({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.android,
            size: 50.0,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Haldua');
          },
        ),
      ),
    );
  }
}

class Haldua extends StatelessWidget {
  const Haldua({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: new AppBar(
        title: new Text('Musik'),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.music_note,
            size: 50.0,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Haltiga');
          },
        ),
      ),
    );
  }
}

class Haltiga extends StatelessWidget {
  const Haltiga({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: new AppBar(
        title: new Text('Kalender'),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.calendar_today,
            size: 50.0,
            color: Colors.blue,
          ),
          onPressed: null,
        ),
      ),
    );
  }
}
