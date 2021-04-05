import 'package:flutter/material.dart';

class DetailInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 310,
        width: 380,
        margin: EdgeInsets.only(top: 8),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Text('hi'),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 7), // changes position of shadow
            ),
          ],
        ));
  }
}
