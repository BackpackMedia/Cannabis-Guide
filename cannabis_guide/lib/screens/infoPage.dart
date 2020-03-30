import 'package:flutter/material.dart';
import 'package:cannabisguide/constants.dart';
import 'package:cannabisguide/widgets/infoTile.dart';
import 'package:cannabisguide/typeDetails.dart';
import 'package:cannabisguide/screens/detailsPage.dart';

class InfoPage extends StatelessWidget {
  TypeDetails details = TypeDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                InfoTile(
                    title: 'Indica',
                    image: 'images/indica.png',
                    color: Color(0xFF008000),
                    onPress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(num: 0, color: Color(0xFF008000))));
                    }),
                InfoTile(
                  title: 'Hybrid',
                  image: 'images/indica.png',
                  color: Color(0xFFFFA500),
                  onPress: () {
                    Navigator.pushNamed(context, 'details');
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                InfoTile(
                  title: 'Sativa',
                  image: 'images/indica.png',
                  color: Color(0xFF4B0082),
                  onPress: () {
                    Navigator.pushNamed(context, 'details');
                  },
                ),
                InfoTile(
                  title: 'CBD',
                  image: 'images/indica.png',
                  color: Color(0xFF000000),
                  onPress: () {
                    Navigator.pushNamed(context, 'details');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
