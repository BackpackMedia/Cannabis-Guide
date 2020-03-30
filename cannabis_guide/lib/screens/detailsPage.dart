import 'package:flutter/material.dart';
import 'package:cannabisguide/typeDetails.dart';
import 'package:cannabisguide/constants.dart';

class DetailsPage extends StatelessWidget {
  final Color color;
  final int num;

  DetailsPage({
    this.color,
    this.num,
  });
  TypeDetails details = TypeDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                details.getEffects(num),
                style: kDetailsStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                details.getSymptoms(num),
                style: kDetailsStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                details.getTOD(num),
                style: kDetailsStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
