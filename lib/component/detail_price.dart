import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

class DetailPrice extends StatelessWidget {
  Color color;
  DetailPrice({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionCard(
      leading: null,
      trailing: null,
      title: Container(
        height: 20,
        child: Card(color: this.color),
      ),
      children: [
        Container(
          child: Card(
            color: this.color,
            child: Text('hi'),
          ),
        ),
      ],
    );
  }
}
