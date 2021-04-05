import 'package:flutter/material.dart';

class DetailPrice extends StatelessWidget {
  Color color;
  DetailPrice({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      margin: EdgeInsets.all(20),
      child: Card(color: this.color),
    );
  }
}
