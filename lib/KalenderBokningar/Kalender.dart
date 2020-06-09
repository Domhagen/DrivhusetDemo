import 'package:drivhuset/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drivhuset/Const.dart';
import '../List.dart';
import 'BokningsTider.dart';

class Kalender extends StatefulWidget {
  @override
  _KalenderState createState() => _KalenderState();
}

class _KalenderState extends State<Kalender> {
  final TextEditingController _cepController = TextEditingController();

  List<Widget> Tider = [
    BokningsTider(

        //  title1: '20 juni ',
        //  title2: '13:30',
        ),
    BokningsTider(

        //   title1: '24 juni ',
        //   title2: '12:00',
        ),
    BokningsTider(

        //   title1: '28 juni ',
        //   title2: '16:00',
        ),
    BokningsTider(

        //   title1: '30 juni ',
        //   title2: '13:00',
        ),
    BokningsTider(

        //   title1: '1 Juli ',
        //   title2: '14:00',
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SafeArea(
            child: Hero(
              tag: 'Kalender',
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      left: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      'Boka ny vägledning',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      'Vem vill du boka vägledningen med?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ListBilder(),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 150,
                      bottom: 20,
                    ),
                    child: Text(
                      'Vilka av de tillgängliga tider passar dig bäst?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: Tider,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Divider(
                      thickness: 1,
                      color: Colors.black12,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 100,
                    ),
                    child: Text(
                      'Beskriv gärna kort vad du behöver hjälp med.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 150,
                    width: 375,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _cepController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Jag behöver hjälp med...',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
