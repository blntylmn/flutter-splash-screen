import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_i18n/flutter_i18n.dart';

class ScreenTwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScreenTwoState();
  }
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () => Navigator.pushNamed(context, "/screen-3"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff622f74),
              gradient: LinearGradient(
                colors: [new Color(0xff6dd5ed), new Color(0xff2193b0)],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75.0,
                child: Icon(
                  Icons.location_on,
                  color: new Color(0xff2193b0),
                  size: 50.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
              ),
              Text(
                FlutterI18n.translate(context, "screen_two"),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}