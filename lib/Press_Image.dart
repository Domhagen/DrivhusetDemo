import 'package:drivhuset/Const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Kalender.dart';

class PressImage extends StatelessWidget {
  final String title;
  PressImage({this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KalenderPage()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 5),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('Images/Jag.jpg'),
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
              padding: const EdgeInsets.only(top: 27),
              child: Text(title, style: BildText),
            ),
          ],
        ),
      ),
    );
  }
}
