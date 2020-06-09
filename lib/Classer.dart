import 'package:drivhuset/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'LoginSignup/login_screen.dart';
import 'Slidingrout.dart';
import 'StartUp_Screen/IntroScreen.dart';

class DrivhusetImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'Images/HemskärmBG.png',
            width: double.infinity,
            height: 270,
            fit: BoxFit.fill,
          ),
          Column(
            children: <Widget>[
              SafeArea(
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8, bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Godmorgon, Theodor',
                  style: inledningTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 150),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Din bokning med stina måste ombokas,'
                    ' vill du göra det nu?',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 15, top: 20),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('Images/Jag.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      border: Border.all(
                        color: Colors.green.shade100,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AnimationContainer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 20),
      width: 275,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WelcomeScreen()),
          );
          /*
          Navigator.pushAndRemoveUntil(
              context,
              SlidingRoute(builder: (context) => WelcomeScreen()),
              ModalRoute.withName("/tillintroskärm"));
          */
          HapticFeedback.lightImpact();
        },
        child: Text(
          'Fortsätt utan konto',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}

class AnimationContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
          HapticFeedback.lightImpact();
        },
        child: Text(
          'Fortsätt med konto',
          style: TextStyle(fontSize: 18, color: Colors.white70),
        ),
      ),
    );
  }
}
