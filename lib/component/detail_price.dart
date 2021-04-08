import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

enum Price { smarter, selfStarter, tradingCharter }

class DetailPrice extends StatelessWidget {
  Color color;
  DetailPrice({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      icon: Icon(Icons.circle, color: color),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Price>>[
        this.color == Colors.red
            ? const PopupMenuItem<Price>(
                value: Price.selfStarter,
                child: Text('50 bug'),
              )
            : const PopupMenuItem<Price>(
                value: Price.smarter,
                child: Text('hi'),
              ),
      ],
    );
  }
}
