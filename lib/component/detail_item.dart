import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 380,
        width: 380,
        margin: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/TestPic.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ));
  }
}
