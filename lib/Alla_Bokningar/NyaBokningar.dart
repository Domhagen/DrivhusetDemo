import 'package:drivhuset/Const.dart';
import 'package:flutter/material.dart';

class NyaBokningar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(
        top: 5,
        left: 10,
        right: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: AktivColor,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 10, top: 10, right: 100),
            child: Text(
              'Torsdagen den 27 Feb på Drivhuset Örebro i Creative House.',
              style: AktuellaBokningsText,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 290, top: 10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('Images/Jag.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              border: Border.all(
                color: Colors.green.shade100,
                width: 0.8,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 11, bottom: 10),
            child: Text(
              'Visa bokning',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white70,
                fontFamily: 'NanumGothic',
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              'OBS! Ombokning krävs.',
              style: TextStyle(
                fontSize: 10,
                color: Colors.green.shade200,
                fontFamily: 'NanumGothic',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
