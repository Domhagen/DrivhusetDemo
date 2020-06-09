import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'KalenderBokningar/Kalender.dart';
import 'Press_Image.dart';

class ListBilder extends StatefulWidget {
  @override
  _ListBilderState createState() => _ListBilderState();
}

class _ListBilderState extends State<ListBilder> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            PressImage(
              imageProvider: AssetImage('Images/Man1.jpg'),
              title: 'Kalle',
            ),
            PressImage(
              imageProvider: AssetImage('Images/Woman1.jpg'),
              title: 'Stina',
            ),
            PressImage(
              imageProvider: AssetImage('Images/Man2.jpg'),
              title: 'Niklas',
            ),
            PressImage(
              imageProvider: AssetImage('Images/Woman2.jpg'),
              title: 'Julia',
            ),
          ],
          //getList(),
        ),
      ),
    );
  }
}
/*
  List<Widget> getList() {
    List<PressImage> list = [];
    for (int i = 0; i < 1; i++) {
      list.add(
        PressImage(
          title: 'Theo',
        ),
      );
    }
    return list;
  }
}

 */
