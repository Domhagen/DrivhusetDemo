import 'package:flutter/material.dart';
import 'GammlaBokningar.dart';

class TidigareBokningar extends StatefulWidget {
  @override
  _TidigareBokningarState createState() => _TidigareBokningarState();
}

class _TidigareBokningarState extends State<TidigareBokningar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: getTidigareBokningar(),
      ),
    );
  }

  List<Widget> getTidigareBokningar() {
    List<GammlaBokningar> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(GammlaBokningar());
    }
    return list;
  }
}
