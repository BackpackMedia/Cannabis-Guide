import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //TODO: fit to fill screen
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                //TODO:Extract this
                child: Container(
                  color: Colors.green,
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.list),
                      Text(
                        'Indica',
                        style: TextStyle(
                            color: Colors.white), //TODO: Make this a constant
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amber,
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.list),
                      Text(
                        'Hybrid',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Sativa'),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text('CBD'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
