import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Movies'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        // Add box decoration
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.deepPurple[400],
              Colors.deepPurple[600],
              Colors.deepPurple[800],
              Colors.deepPurple[700],
            ],
          ),
        ),
        child: MovieContent(),
      ),
    );
  }
}

class MovieContent extends StatefulWidget {
  @override
  _MovieContentState createState() => _MovieContentState();
}

class _MovieContentState extends State<MovieContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.vertical,
      // children: _getListData(),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    'Trending Movies',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(10),
          // padding: const EdgeInsets.symmetric(vertical: 20),
          height: 300,
          // color: Colors.pink,
          // decoration: BoxDecoration(color: Colors.pink),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                // width: 200,
                height: 200,
                // color: Colors.black,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(10.0),
                  child: Image.asset(
                    'images/Aquaman.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                // width: 200,
                height: 200,
                // color: Colors.black,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(10.0),
                  child: Image.asset(
                    'images/Aquaman.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                // width: 200,
                height: 200,
                // color: Colors.black,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(10.0),
                  child: Image.asset(
                    'images/Aquaman.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                // width: 200,
                height: 200,
                // color: Colors.black,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(10.0),
                  child: Image.asset(
                    'images/Aquaman.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                // width: 200,
                height: 200,
                // color: Colors.black,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(10.0),
                  child: Image.asset(
                    'images/Aquaman.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    'Watch Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

_getListData() {
  List<Widget> widgets = [];
  for (int i = 0; i < 10; i++) {
    widgets.add(
      GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Row $i'),
        ),
        onTap: () {
          print('Row Tapped');
        },
      ),
    );
  }
  return widgets;
}
