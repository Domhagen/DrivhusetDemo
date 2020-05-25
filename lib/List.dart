import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          children: getList(),
        ),
      ),
    );
  }

  List<Widget> getList() {
    List<PressImage> list = [];
    for (int i = 0; i < 6; i++) {
      list.add(
        PressImage(
          title: 'Theo',
        ),
      );
    }
    return list;
  }
}
