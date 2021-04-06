import 'package:flutter/material.dart';
import 'package:product_detail/component/detail_bar.dart';
import 'package:product_detail/component/detail_item.dart';
import 'package:product_detail/component/detail_info.dart';
import 'package:product_detail/component/detail_price.dart';
import 'package:product_detail/component/detail_chat.dart';

class ProductDetailPage extends StatefulWidget {
  static String tag = 'ProductdetaiPage';
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailBar(),
      backgroundColor: Colors.white,
      body: Container(
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
                          SizedBox(height: 60),
                          DetailPrice(color: Colors.red),
                          DetailPrice(color: Colors.red),
                          DetailPrice()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              DetailInfo()
            ]),
      ),
    );
  }
}
