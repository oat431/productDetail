import 'package:flutter/material.dart';

class DetailInfo extends StatelessWidget {
  Widget _usernameText(String name) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4),
      child: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _descriptionText(String context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Text(
        context,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'FC-Minimal-Regular',
        ),
      ),
    );
  }

  Widget _amongText(String number, double size) {
    return Text(
      number,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }

  Widget _price(String amongText, String description) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [_amongText(amongText, 26.0), _descriptionText(description)],
      ),
    );
  }

  Widget _timeText(String time) {
    return Container(
      child: Text(
        time,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
        height: 310,
        width: 380,
        margin: EdgeInsets.only(top: 10),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _usernameText('Sahachan T.'),
                    _descriptionText("หาคนซื้อหารเสื้อผ้า 9 ชุด"),
                    _price("100 ", "THB/People")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _timeText("    3 Min\n27.01.20"),
                    _amongText("2", 40.0),
                  ],
                )
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ));
  }
}
