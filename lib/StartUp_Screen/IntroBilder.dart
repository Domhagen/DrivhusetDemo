import 'package:drivhuset/Const.dart';
import 'package:drivhuset/Slidingrout.dart';
import 'package:drivhuset/main.dart';
import 'package:flutter/material.dart';
import 'package:drivhuset/StartUp_Screen/IntroScreen.dart';
import 'package:flutter/services.dart';

class IntroBild1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 0.0),
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
          ),
          Text(
            'Exempel titel 1',
            style: RubrikTextIntro,
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Exempel med text till exempel 1 och en bild som förklarar',
              style: ExplaynText,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 35,
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
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.only(right: 10, top: 0),
                height: 50,
                width: 70,
                child: GestureDetector(
                  onTap: () {
                    final TabController controller =
                        DefaultTabController.of(context);
                    if (!controller.indexIsChanging) {
                      var pageScroller = pagescroll();
                      controller.animateTo(pageScroller.length - 1);
                      HapticFeedback.lightImpact();
                    }
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(fontSize: 25, color: Colors.white70),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroBild2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 23.0),
          child: Text(
            'Exempel titel 2',
            style: RubrikTextIntro,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Exempel med text till exempel 2 och en bild som förklarar',
              style: ExplaynText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 25, right: 10, left: 10),
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
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 23.0),
          child: Text(
            'Exempel titel 3',
            style: RubrikTextIntro,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Exempel med text till exempel 3 och en bild som förklarar',
              style: ExplaynText,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 25, right: 10, left: 10),
            child: Image.asset(
              'Images/Bild 3.png',
              fit: BoxFit.contain,
              height: 230,
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.all(20),
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
                  Navigator.push(
                    context,
                    SlidingRoute(builder: (context) => MyHomePage()),
                  );
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
        ),
      ],
    );
  }
}
