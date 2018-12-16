import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is home vc'),
      ),
      body: Center(
        child: Expanded(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
          ),
        ),
      ),
    );
  }
}