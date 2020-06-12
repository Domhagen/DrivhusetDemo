import 'package:flutter/material.dart';
import 'package:drivhuset/Const.dart';

class BokningsTider extends StatefulWidget {
  @override
  _BokningsTiderState createState() => _BokningsTiderState();
}

class _BokningsTiderState extends State<BokningsTider> {
  Color Tid1 = InaktivBokningsTid;
  Color Tid2 = InaktivBokningsTid;
  Color Tid3 = InaktivBokningsTid;
  Color Tid4 = InaktivBokningsTid;
  Color Tid5 = InaktivBokningsTid;

  void UpdateColorTime(int ColorTime) {
    //Bitch as
    if (ColorTime == 1) {
      if (Tid1 == InaktivBokningsTid) {
        Tid1 = AktivBokningsTid;

        Tid2 = InaktivBokningsTid;
        Tid3 = InaktivBokningsTid;
        Tid4 = InaktivBokningsTid;
        Tid5 = InaktivBokningsTid;
      } else {
        Tid1 = InaktivBokningsTid;
      }
    }
    //Bitch dick
    if (ColorTime == 2) {
      if (Tid2 == InaktivBokningsTid) {
        Tid2 = AktivBokningsTid;

        Tid1 = InaktivBokningsTid;
        Tid3 = InaktivBokningsTid;
        Tid4 = InaktivBokningsTid;
        Tid5 = InaktivBokningsTid;
      } else {
        Tid2 = InaktivBokningsTid;
      }
    }
    if (ColorTime == 3) {
      if (Tid3 == InaktivBokningsTid) {
        Tid3 = AktivBokningsTid;

        Tid1 = InaktivBokningsTid;
        Tid2 = InaktivBokningsTid;
        Tid4 = InaktivBokningsTid;
        Tid5 = InaktivBokningsTid;
      } else {
        Tid3 = InaktivBokningsTid;
      }
    }
    if (ColorTime == 4) {
      if (Tid4 == InaktivBokningsTid) {
        Tid4 = AktivBokningsTid;

        Tid1 = InaktivBokningsTid;
        Tid2 = InaktivBokningsTid;
        Tid3 = InaktivBokningsTid;
        Tid5 = InaktivBokningsTid;
      } else {
        Tid4 = InaktivBokningsTid;
      }
    }
    if (ColorTime == 5) {
      if (Tid5 == InaktivBokningsTid) {
        Tid5 = AktivBokningsTid;

        Tid1 = InaktivBokningsTid;
        Tid2 = InaktivBokningsTid;
        Tid3 = InaktivBokningsTid;
        Tid4 = InaktivBokningsTid;
      } else {
        Tid5 = InaktivBokningsTid;
      }
    }
  }

  // Gör en egen listview och lägg in alla tider i egna Widgets

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
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
                color: Tid1,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        '20 maj ',
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
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                UpdateColorTime(2);
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                color: Tid2,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        '9 juni ',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ),
                    Text(
                      '16:30',
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
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                UpdateColorTime(3);
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                color: Tid3,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        '11 juni ',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ),
                    Text(
                      '14:00',
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
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                UpdateColorTime(4);
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                color: Tid4,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        '16 juni ',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ),
                    Text(
                      '13:00',
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
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                UpdateColorTime(5);
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                color: Tid5,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        '20 juni ',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ),
                    Text(
                      '15:15',
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
          ),
        ],
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
