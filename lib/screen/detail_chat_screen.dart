import 'package:flutter/material.dart';
import 'package:product_detail/component/detail_chat.dart';

class ProductChatScreen extends StatefulWidget {
  static String tag = 'ProductChatScreen';
  @override
  _ProductChatScreenState createState() => _ProductChatScreenState();
}

class _ProductChatScreenState extends State<ProductChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/icon/Arrow - Left 2_1.png'),
        title: DetailChatTitle('Sahachan T.'),
        actions: [
          Image.asset('assets/icon/Notification_1.png'),
          Image.asset('assets/icon/tel_1.png')
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            DetailChatSender('I love your suit'),
            DetailChatSender('Can I join your?'),
            DetailChatReceiver('Yes, you can')
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
              onPressed: () {},
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
      ),
    );
  }
}
