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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            DetailChatTitle('today'),
            DetailChatSender('I love your suit'),
            DetailChatSender('Can I join your?'),
            DetailChatReceiver('Yes, you can')
          ],
        ),
      ),
    );
  }
}
