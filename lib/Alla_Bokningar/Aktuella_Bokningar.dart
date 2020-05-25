import 'package:drivhuset/Alla_Bokningar/NyaBokningar.dart';
import 'package:flutter/material.dart';

class ListBokningar extends StatefulWidget {
  @override
  _ListBokningarState createState() => _ListBokningarState();
}

class _ListBokningarState extends State<ListBokningar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: getAktuellaBokningar(),
      ),
    );
  }

  List<Widget> getAktuellaBokningar() {
    List<NyaBokningar> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(NyaBokningar());
    }
    return list;
  }
}
