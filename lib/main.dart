import 'package:drivhuset/Alla_Bokningar/Aktuella_Bokningar.dart';
import 'package:drivhuset/Const.dart';
import 'package:drivhuset/StartUp_Screen/IntroScreen.dart';
import 'package:drivhuset/StartUp_Screen/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:drivhuset/Classer.dart';
import 'Const.dart';
import 'package:drivhuset/Alla_Bokningar/Tidigare_Bokningar.dart';
import 'List.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      theme: ThemeData(),
      routes: {
        '/tillhemskärm': (context) => MyHomePage(),
        '/tillintroskärm': (context) => WelcomeScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            backgroundColor: Colors.teal,
            flexibleSpace: FlexibleSpaceBar(
              background: DrivhusetImage(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text('Boka ny vägledning med,',
                          style: BokningarStorText),
                    ),
                    ListBilder(),
                    Divider(
                      thickness: 2,
                      color: Colors.teal.shade50,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Aktuella bokningar',
                        style: BokningarStorText,
                      ),
                    ),
                    ListBokningar(),
                    Divider(
                      thickness: 2,
                      color: Colors.teal.shade50,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Tidigare bokningar',
                        style: BokningarStorText,
                      ),
                    ),
                    TidigareBokningar(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
