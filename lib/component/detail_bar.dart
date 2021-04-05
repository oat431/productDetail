import 'package:flutter/material.dart';

class DetailBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset('assets/icon/Search_1.png'),
      title: Text('text1', style: TextStyle(color: Colors.black87)),
      actions: [
        Image.asset('assets/icon/Send_1.png'),
        Image.asset('assets/icon/Notification_1.png'),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
