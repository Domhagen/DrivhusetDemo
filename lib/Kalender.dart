import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KalenderPage extends StatefulWidget {
  @override
  _KalenderPageState createState() => _KalenderPageState();
}

class _KalenderPageState extends State<KalenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalender'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            color: Colors.blue,
            child: Text('Kalender'),
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2021),
              ).then<DateTime>((DateTime value) {
                if (value != null) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('Selected datetime: $value')),
                  );
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
