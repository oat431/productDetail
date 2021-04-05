import 'package:flutter/material.dart';

class DetailBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  Widget _imageBox(String name) {
    return Image.asset(
      name,
      scale: 1.8,
    );
  }

  Widget _textDetail(String context) {
    return TextButton(
        onPressed: () => {},
        child: Text(context, style: TextStyle(color: Colors.black87)));
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: _imageBox('assets/icon/Search_0.png'),
      title: Container(
        child: Row(
          children: [
            SizedBox(
              width: 32,
            ),
            _textDetail('Following'),
            _textDetail('Location')
          ],
        ),
      ),
      centerTitle: true,
      actions: [
        _imageBox('assets/icon/Send_0.png'),
        _imageBox('assets/icon/Notification_0.png'),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
