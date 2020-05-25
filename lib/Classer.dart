import 'package:drivhuset/Const.dart';
import 'package:flutter/material.dart';

class DrivhusetImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'Images/HemskärmBG.png',
            width: double.infinity,
            height: 250,
            fit: BoxFit.fill,
          ),
          Column(
            children: <Widget>[
              SafeArea(
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8, bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Godmorgon, Theodor',
                  style: inledningTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 150),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Din bokning med stina måste ombokas,'
                    ' vill du göra det nu?',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 15, top: 20),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('Images/Jag.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      border: Border.all(
                        color: Colors.green.shade100,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
