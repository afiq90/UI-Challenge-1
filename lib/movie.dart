import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('widget.title'),
      //   backgroundColor: Colors.black87,
      // ),
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
        child: MainContent(),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex, //this will be set when tab is tapped
      onTap: (index) {
        setState(() {
          print('index ' + index.toString());
          _currentIndex = index;
          print('current index ' + _currentIndex.toString());
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: _currentIndex == 0
              ? Icon(Icons.home, color: Colors.red, size: 30)
              : Icon(Icons.home, color: Colors.black, size: 30),
          // title: Text('HOME', style: TextStyle(color: Colors.black)),
          //if don't want title need to use this little hack : https://stackoverflow.com/questions/52182384/flutter-how-to-hide-remove-title-of-bottomnavigationbaritem/52182628
          title: Container(
            height: 0.0,
          ),
          backgroundColor: _currentIndex == 0 ? Colors.purple : Colors.red,
          // activeIcon: Icon(Icons.home, color: Colors.red, size: 30),
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 1
              ? Icon(Icons.camera_enhance, color: Colors.red, size: 30)
              : Icon(Icons.camera, color: Colors.black, size: 30),
          // title: Text('HOME', style: TextStyle(color: Colors.black)),
          //if don't want title need to use this little hack : https://stackoverflow.com/questions/52182384/flutter-how-to-hide-remove-title-of-bottomnavigationbaritem/52182628
          title: Container(
            height: 0.0,
          ),
          backgroundColor: _currentIndex == 1 ? Colors.red : Colors.red,
          // activeIcon: Icon(Icons.home, color: Colors.red, size: 30),

          // activeIcon:
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 2
              ? Icon(Icons.camera_enhance, color: Colors.red, size: 30)
              : Icon(Icons.search, color: Colors.black, size: 30),
          // title: Text('HOME', style: TextStyle(color: Colors.black)),
          //if don't want title need to use this little hack : https://stackoverflow.com/questions/52182384/flutter-how-to-hide-remove-title-of-bottomnavigationbaritem/52182628
          title: Container(
            height: 0.0,
          ),
          backgroundColor: Colors.white,
          // activeIcon:
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 3
              ? Icon(Icons.camera_enhance, color: Colors.red, size: 30)
              : Icon(Icons.person,
                  color: Colors.black,
                  size:
                      30), // title: Text('HOME', style: TextStyle(color: Colors.black)),
          //if don't want title need to use this little hack : https://stackoverflow.com/questions/52182384/flutter-how-to-hide-remove-title-of-bottomnavigationbaritem/52182628
          title: Container(
            height: 0.0,
          ),
          backgroundColor: Colors.white,
          // activeIcon:
        ),
      ],
    );
  }
}

class MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    'Movie Details',
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
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: new BorderRadius.circular(25.0),
              child: Image.asset(
                'images/hotel_transylvania3.jpg',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: 350,
                child: Text(
                  'HOTEL TRANSYLVANIA 3',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Row(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  height: 150,
                  // color: Colors.teal,
                  child: Text(
                    '''Count Dracula and company participate in a cruise for sea-loving monsters, unaware that their boat is being commandeered by the monster-hating Van Helsing family.
                    ''',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                height: 150,
                // color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '8.6 / 10',
                        style:
                            TextStyle(color: Colors.yellowAccent, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                width: 200,
                // color: Colors.green,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.hearing,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
