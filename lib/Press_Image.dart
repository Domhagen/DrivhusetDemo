import 'package:drivhuset/Const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'KalenderBokningar/Kalender.dart';
import 'package:flutter/services.dart';
import 'package:drivhuset/Slidingrout.dart';

class PressImage extends StatelessWidget {
  PressImage({this.imageProvider, this.title});

  final ImageProvider imageProvider;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, SlidingRoute(builder: (context) => Kalender()));
        HapticFeedback.lightImpact();
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 5),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(
            color: AktivColor,
            width: 1.5,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 24.0),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class PressImage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, SlidingRoute(builder: (context) => Kalender()));
        HapticFeedback.lightImpact();
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 5),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('Images/Woman1.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(
            color: AktivColor,
            width: 1.5,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 24.0),
              child: Text(
                'Namn',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PressImage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, SlidingRoute(builder: (context) => Kalender()));
        HapticFeedback.lightImpact();
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 5),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('Images/Man2.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(
            color: AktivColor,
            width: 1.5,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 24.0),
              child: Text(
                'Namn',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PressImage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, SlidingRoute(builder: (context) => Kalender()));
        HapticFeedback.lightImpact();
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 5),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('Images/Woman2.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(
            color: AktivColor,
            width: 1.5,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 24.0),
              child: Text(
                'Namn',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 */
