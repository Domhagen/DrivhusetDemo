import 'package:drivhuset/Const.dart';
import 'package:drivhuset/main.dart';
import 'package:flutter/material.dart';
import 'package:drivhuset/StartUp_Screen/IntroScreen.dart';

class IntroBild1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
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
        Expanded(
          child: Container(
            height: 325,
            width: 325,
            decoration: BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                  image: AssetImage('Images/Jag.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(70)),
              border: Border.all(
                color: Colors.white70,
                width: 1.0,
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 120),
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
                      }
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.teal,
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
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            'Exempel titel 2',
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
        Container(
          height: 310,
          width: 325,
          decoration: BoxDecoration(
            color: Colors.teal,
            image: DecorationImage(
                image: AssetImage('Images/Jag.jpg'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(70)),
            border: Border.all(
              color: Colors.white70,
              width: 1.0,
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
          padding: const EdgeInsets.only(top: 12.0),
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
        Container(
          height: 310,
          width: 325,
          decoration: BoxDecoration(
            color: Colors.teal,
            image: DecorationImage(
                image: AssetImage('Images/Jag.jpg'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(70)),
            border: Border.all(
              color: Colors.white70,
              width: 1.0,
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
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            'Exempel titel 4',
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
        Container(
          height: 310,
          width: 325,
          decoration: BoxDecoration(
            color: Colors.teal,
            image: DecorationImage(
                image: AssetImage('Images/Jag.jpg'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(70)),
            border: Border.all(
              color: Colors.white70,
              width: 1.0,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
                ModalRoute.withName("/tillhemskärm"));
          },
          child: Container(
            margin: EdgeInsets.only(top: 105, left: 225),
            height: 50,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Container(
              child: Center(
                child: Text(
                  'Fortsätt',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal,
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
