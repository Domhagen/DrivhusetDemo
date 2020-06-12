import 'package:flutter/material.dart';
import 'package:drivhuset/StartUp_Screen/IntroBilder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Center(
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
        ],
      ),
    );
  }
}

class pagescroll extends StatelessWidget {
  List<Widget> pageScroller = [
    IntroBild1(),
    IntroBild2(),
    IntroBild3(),
  ];

  get length => pageScroller.length;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: pageScroller.length,
      child: SafeArea(
        child: Builder(
          builder: (BuildContext) => Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TabPageSelector(
                    color: Colors.white,
                    selectedColor: Colors.teal,
                  ),
                ),
                Container(
                  height: screenheight - 106,
                  width: screenwidth,
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
