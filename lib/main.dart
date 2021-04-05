import 'package:flutter/material.dart';
import 'component/detail_bar.dart';
import 'component/detail_item.dart';
import 'component/detail_info.dart';
import 'component/detail_price.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SFProText-Regular',
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
