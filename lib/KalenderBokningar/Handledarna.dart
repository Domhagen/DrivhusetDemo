import 'package:flutter/material.dart';
import 'package:drivhuset/Const.dart';

class HandledarListan extends StatefulWidget {
  @override
  _HandledarListanState createState() => _HandledarListanState();
}

class _HandledarListanState extends State<HandledarListan> {
  Color Handledare1 = InaktivHandledare;
  Color Handledare2 = InaktivHandledare;
  Color Handledare3 = InaktivHandledare;
  Color Handledare4 = InaktivHandledare;

  void UpdateColor(int Color) {
    if (Color == 1) {
      if (Handledare1 == InaktivHandledare) {
        Handledare1 = AKtivHandledare;

        Handledare2 = InaktivHandledare;
        Handledare3 = InaktivHandledare;
        Handledare4 = InaktivHandledare;
      } else {
        Handledare1 = InaktivHandledare;
      }
    }

    if (Color == 2) {
      if (Handledare2 == InaktivHandledare) {
        Handledare2 = AKtivHandledare;

        Handledare1 = InaktivHandledare;
        Handledare3 = InaktivHandledare;
        Handledare4 = InaktivHandledare;
      } else {
        Handledare2 = InaktivHandledare;
      }
    }
    if (Color == 3) {
      if (Handledare3 == InaktivHandledare) {
        Handledare3 = AKtivHandledare;

        Handledare1 = InaktivHandledare;
        Handledare2 = InaktivHandledare;
        Handledare4 = InaktivHandledare;
      } else {
        Handledare3 = InaktivHandledare;
      }
    }
    if (Color == 4) {
      if (Handledare4 == InaktivHandledare) {
        Handledare4 = AKtivHandledare;

        Handledare1 = InaktivHandledare;
        Handledare2 = InaktivHandledare;
        Handledare3 = InaktivHandledare;
      } else {
        Handledare4 = InaktivHandledare;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                UpdateColor(1);
              });
            },
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10, right: 5),
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('Images/Man1.jpg'),
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
                          'Kalle',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 5),
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Handledare1,
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                ),
              ],
            ),
            //  ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                UpdateColor(2);
              });
            },
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10, right: 5),
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.hardLight,
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
                          'Stina',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 5),
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Handledare2,
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                UpdateColor(3);
              });
            },
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10, right: 5),
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.hardLight,
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
                          'Niklas',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 5),
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Handledare3,
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                UpdateColor(4);
              });
            },
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10, right: 5),
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.hardLight,
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
                          'Julia',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 5),
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Handledare4,
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
