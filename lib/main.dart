import 'package:flutter/material.dart';
import 'package:product_detail/screen/detail_main.dart';
import 'package:product_detail/screen/detail_chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    ProductDetailPage.tag: (context) => ProductDetailPage(),
    ProductChatScreen.tag: (context) => ProductChatScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SFProText-Regular',
      ),
      home: ProductDetailPage(),
      routes: routes,
    );
  }
}
