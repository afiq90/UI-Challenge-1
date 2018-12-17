import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: _trendingCollection(),
    );
  }

  Widget _trendingCollection() {
    return ListView(
      // children: _getListData(),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // Padding(
                //   padding: const EdgeInsets.only(top: 20),
                //   child: 
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Trending',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        // textAlign: TextAlign.left,
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
                        // color: Colors.red,
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(10.0),
                          child: Image.asset(
                            'images/Aquaman.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // AnimatedContainer(
                      //   duration: Duration(seconds: 1),
                      //   // width: 200,
                      //   height: 200,
                      //   // color: Colors.black,
                      //   child: ClipRRect(
                      //     borderRadius: new BorderRadius.circular(10.0),
                      //     child: Image.asset(
                      //       'images/Aquaman.png',
                      //       fit: BoxFit.contain,
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // AnimatedContainer(
                      //   duration: Duration(seconds: 1),
                      //   // width: 200,
                      //   height: 200,
                      //   // color: Colors.black,
                      //   child: ClipRRect(
                      //     borderRadius: new BorderRadius.circular(10.0),
                      //     child: Image.asset(
                      //       'images/Aquaman.png',
                      //       fit: BoxFit.contain,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                // ),
              ],
            ),
          ),
        ),
        // Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        // children: <Widget>[

        // ],
        // ),
      ],
      scrollDirection: Axis.horizontal,
    );
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
}

class MovieContent extends StatefulWidget {
  @override
  _MovieContentState createState() => _MovieContentState();
}

class _MovieContentState extends State<MovieContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
          // children: _getListData(),
          ),
    );
  }

  // _getListData() {
  //   List<Widget> widgets = [];
  //   for (int i = 0; i < 10; i++) {
  //     widgets.add(Padding(
  //       padding: const EdgeInsets.all(10.0),
  //       child: Text('Row $i'),
  //     ));
  //   }
  // }
}
