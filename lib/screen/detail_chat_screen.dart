import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:product_detail/component/detail_chat.dart';
import 'package:product_detail/component/detail_confirm_dialog.dart';
import 'package:product_detail/screen/detail_main.dart';

class ProductChatScreen extends StatefulWidget {
  static String tag = 'ProductChatScreen';
  @override
  ProductChatScreenState createState() => ProductChatScreenState();
}

class ProductChatScreenState extends State<ProductChatScreen> {
  static var li = [
    DetailChatSender('I love your suit'),
    DetailChatSender('Can I join your?'),
    DetailChatReceiver('Yes, you can')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ProductDetailPage(),
              ),
              (route) => false,
            ),
          },
          child: Image.asset('assets/icon/Arrow - Left 2_1.png'),
        ),
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
          children: [for (var i in li) i],
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
              onPressed: () => {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                        child: ListBody(
                      children: [DetailConfirm()],
                    ));
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.linear,
                ),
              },
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
