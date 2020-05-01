import 'package:flutter/material.dart';
import 'package:weednoob/constants.dart';

class InfoTile extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final Function onPress;

  InfoTile({
    @required this.title,
    @required this.image,
    @required this.color,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: color,
        child: FlatButton(
          color: color,
          onPressed: onPress,
          child: Text(
            title,
            style: kInfoStyle,
          ),
        ),
      ),
    );
  }
}
