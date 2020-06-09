import 'package:flutter/material.dart';
import 'package:drivhuset/Const.dart';

class BokningsTider extends StatefulWidget {
  @override
  _BokningsTiderState createState() => _BokningsTiderState();
}

class _BokningsTiderState extends State<BokningsTider> {
  Color AktivTid = AktivBokningsTid;
  Color InaktivTid = InaktivBokningsTid;

  void UpdateColorTime(int ColorTime) {
    if (ColorTime == 1) {
      if (InaktivTid == InaktivBokningsTid) {
        InaktivTid = AktivBokningsTid;
      } else {
        InaktivTid = InaktivBokningsTid;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          UpdateColorTime(1);
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: 10),
        height: 50,
        width: 130,
        decoration: BoxDecoration(
          color: InaktivTid,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  '20maj ',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              Text(
                '13:30',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Prov extends StatelessWidget {
  Prov({this.text1, this.text2});

  final String text1;
  final String text2;

  Color AktivTid = AktivBokningsTid;
  Color InaktivTid = InaktivBokningsTid;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 10),
        height: 50,
        width: 130,
        decoration: BoxDecoration(
          color: InaktivTid,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  text1,
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
class Tid2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.teal.shade900,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                '24 Juni ',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ),
            Text(
              '12.00',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tid3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.teal.shade900,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                '28 Juni ',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ),
            Text(
              '16.00',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tid4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.teal.shade900,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                '30 Juni ',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ),
            Text(
              '13.00',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tid5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.teal.shade900,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                '1 Juli ',
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ),
            Text(
              '14.00',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 */
