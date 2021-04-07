import 'package:flutter/material.dart';

class DetailBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            tooltip: 'Send message',
            icon: Image.asset('assets/icon/Send_1.png'),
            onPressed: () {},
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
            tooltip: 'Send request',
            icon: Image.asset('assets/icon/up-arrow-1.png'),
            onPressed: () => {},
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
            tooltip: 'Call',
            icon: Image.asset('assets/icon/tel_3.png'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
