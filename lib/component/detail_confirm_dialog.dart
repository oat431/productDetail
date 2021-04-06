import 'package:flutter/material.dart';
import 'package:product_detail/screen/detail_chat_screen.dart';

class DetailConfirm extends StatelessWidget {
  _acceptMark() {
    ProductChatScreenState.li.add(
      Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            Image.asset('assets/icon/up-arrow-3.png'),
            SizedBox(height: 10),
            Text("Asking request sent"),
            SizedBox(height: 20),
            Image.asset(
              'assets/icon/accept.png',
              width: 60,
              height: 60,
            ),
            SizedBox(height: 20),
            Text("Accepted"),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  _declinedMark() {
    ProductChatScreenState.li.add(
      Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            Image.asset('assets/icon/up-arrow-3.png'),
            SizedBox(height: 10),
            Text("Asking request sent"),
            SizedBox(height: 20),
            Image.asset(
              'assets/icon/denine.png',
              width: 60,
              height: 60,
            ),
            SizedBox(height: 20),
            Text("Declined"),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: 200.0,
      child: Column(
        children: [
          Image.asset('assets/icon/up-arrow-3.png'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                "Sahachan T.'s ask for join in \n หาคนซื้อเสื้อผ้า...",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => {
                  _acceptMark(),
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductChatScreen(),
                    ),
                    (e) => false,
                  ),
                },
                child: Container(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icon/accept.png',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Accept',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () => {
                  _declinedMark(),
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductChatScreen(),
                    ),
                    (e) => false,
                  ),
                },
                child: Container(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icon/denine.png',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Decline',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
