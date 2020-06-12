import 'package:drivhuset/Classer.dart';
import 'package:drivhuset/Slidingrout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:drivhuset/Buttons/ShrinkingButton.dart';
import 'package:drivhuset/LoginSignup/login_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<Offset> offset;
  AnimationController controller2;
  Animation<Offset> offset2;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    )..forward();
    offset = Tween<Offset>(
      begin: Offset(0.0, 6.0),
      end: Offset(0.0, 3.5),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    ));
    controller2 = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    )..forward();
    offset2 = Tween<Offset>(
      begin: Offset(0.0, -2.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: controller2,
      curve: Curves.easeIn,
    ));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SlideTransition(
              position: offset2,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 100),
                      child: Text(
                        'Välkommen till Drivhuset',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 38,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Hur vill du fortsätta? Du behöver inte registrera dig förens du ska genomföra en bokning.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SlideTransition(
              position: offset,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    AnimationContainer1(),
                    AnimationContainer2(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
