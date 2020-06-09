import 'package:drivhuset/Const.dart';
import 'package:drivhuset/main.dart';
import 'package:flutter/material.dart';
import 'package:drivhuset/StartUp_Screen/IntroScreen.dart';
import 'package:flutter/services.dart';

class IntroBild1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SafeArea(
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 35,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Text(
            'Exempel titel 1',
            style: RubrikTextIntro,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 45),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Exempel med text till exempel 1 och en bild som förklarar',
              style: ExplaynText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              'Images/Bild 1.png',
              fit: BoxFit.contain,
              height: 290,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 10, top: 10),
                  height: 50,
                  width: 70,
                  child: Text(
                    'Skip',
                    style: TextStyle(fontSize: 25, color: Colors.white70),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.only(top: 8),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: IconButton(
                    padding: EdgeInsets.only(left: 2, bottom: 45),
                    onPressed: () {
                      final TabController controller =
                          DefaultTabController.of(context);
                      if (!controller.indexIsChanging) {
                        var pageScroller = pagescroll();
                        controller.animateTo(pageScroller.length - 1);
                        HapticFeedback.lightImpact();
                      }
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class IntroBild2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Text(
            'Exempel titel 2',
            style: RubrikTextIntro,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 45),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Exempel med text till exempel 2 och en bild som förklarar',
              style: ExplaynText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              'Images/Bild 2.png',
              fit: BoxFit.fill,
              height: 250,
            ),
          ),
        ),
      ],
    );
  }
}

class IntroBild3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Text(
            'Exempel titel 3',
            style: RubrikTextIntro,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 45),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Exempel med text till exempel 1 och en bild som förklarar',
              style: ExplaynText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              'Images/Bild 1.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}

class IntroBild4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Text(
            'Exempel titel 3',
            style: RubrikTextIntro,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 45),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Exempel med text till exempel 3 och en bild som förklarar',
              style: ExplaynText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Image.asset(
              'Images/Bild 3.png',
              fit: BoxFit.contain,
              height: 230,
            ),
          ),
        ),
        SizedBox(
          height: 165,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 50,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/tillhemskärm");
                HapticFeedback.lightImpact();
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Fortsätt',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
