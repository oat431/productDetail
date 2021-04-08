import 'package:flutter/material.dart';
import 'package:product_detail/component/detail_bar.dart';
import 'package:product_detail/component/detail_item.dart';
import 'package:product_detail/component/detail_info.dart';
import 'package:product_detail/component/detail_price.dart';
import 'package:product_detail/component/detail_bottom_bar.dart';
import 'package:product_detail/component/detail_scroll_bar.dart';

class ProductDetailPage extends StatefulWidget {
  static String tag = 'ProductdetaiPage';
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  var product_detail = Container(
    padding: EdgeInsets.all(25.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              child: DetailItem(),
            ),
            Container(
              width: 50,
              height: 50,
              child: Image.asset('assets/icon/Arrow - Left 2_0.png'),
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    DetailPrice(isBook: true),
                    DetailPrice(isBook: true),
                    DetailPrice(isBook: false),
                  ],
                ),
              ),
            ),
          ],
        ),
        DetailInfo(),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailBar(),
      backgroundColor: Colors.white,
      body: DetailScrollBar(product_detail),
      bottomNavigationBar: DetailBottomBar(),
    );
  }
}
