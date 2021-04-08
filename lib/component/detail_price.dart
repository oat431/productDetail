import 'package:flutter/material.dart';
import 'package:product_detail/screen/detail_chat_screen.dart';
import 'package:show_more_text_popup/show_more_text_popup.dart';
import 'package:prompt_dialog/prompt_dialog.dart';

class DetailPrice extends StatefulWidget {
  bool isBook = false;
  DetailPrice({this.isBook});
  _DetailPriceState createState() => _DetailPriceState();
}

class _DetailPriceState extends State<DetailPrice> {
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: GestureDetector(
        onTap: () =>
            {showMoreText(widget.isBook ? "     34 \$ " : "     \$  0 ")},
        child: Icon(
          Icons.circle,
          key: key,
          color: widget.isBook ? Colors.red : Colors.white,
        ),
      ),
    );
  }

  void promptBox(BuildContext context) {
    prompt(
      context,
      title: Text('Join us'),
      hintText: 'among of money',
      textCancel: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(ProductChatScreen.tag),
        child: SizedBox(
          height: 30,
          child: Image.asset('assets/icon/Send_0.png'),
        ),
      ),
      keyboardType: TextInputType.numberWithOptions(signed: false),
    );
  }

  void showMoreText(String text) {
    ShowMoreTextPopup popup = ShowMoreTextPopup(
      context,
      text: text,
      textStyle: TextStyle(
        color: widget.isBook ? Colors.white : Colors.black,
        fontSize: 18,
      ),
      onDismiss: () => {
        widget.isBook ? print('alreay booked') : promptBox(context),
      },
      height: 30,
      width: 100,
      backgroundColor: widget.isBook ? Colors.black12 : Colors.white,
      padding: EdgeInsets.all(4.0),
      borderRadius: BorderRadius.circular(10.0),
    );

    popup.show(widgetKey: key);
  }
}
