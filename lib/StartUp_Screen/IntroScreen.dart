import 'package:flutter/material.dart';
import 'package:drivhuset/StartUp_Screen/IntroBilder.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/Background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: PageView(
            children: <Widget>[pagescroll()],
          ),
        ),
      ),
    );
  }
}

class pagescroll extends StatelessWidget {
  List<Widget> pageScroller = [
    IntroBild1(),
    IntroBild2(),
    IntroBild4(),
  ];

  get length => pageScroller.length;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pageScroller.length,
      child: SafeArea(
        child: Builder(
          builder: (BuildContext) => Padding(
            padding: const EdgeInsets.all(04.0),
            child: Column(
              children: <Widget>[
                TabPageSelector(),
                Container(
                  height: 631,
                  width: double.infinity,
                  child: Center(
                    child: TabBarView(children: pageScroller),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
