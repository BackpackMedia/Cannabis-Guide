import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}
//TODO: pull details from external page & add navigation
class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: <Widget>[
        Text(
          'deats 1',
          style: TextStyle(color: Colors.white),
        ),
        Text(
        'deats 2',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'deats 3',
          style: TextStyle(color: Colors.white),
        ),
      ],
      ),
    );
  }
}
