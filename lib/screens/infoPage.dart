import 'package:flutter/material.dart';
import 'package:weednoob/constants.dart';
import 'package:weednoob/widgets/infoTile.dart';
import 'package:weednoob/typeDetails.dart';
import 'package:weednoob/screens/detailsPage.dart';

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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(num: 1, color: Color(0xFFFFA500))));
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(num: 2, color: Color(0xFF4B0082))));
                  },
                ),
                InfoTile(
                  title: 'CBD',
                  image: 'images/indica.png',
                  color: Color(0xFF000000),
                  onPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(num: 3, color: Color(0xFF000000))));
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
