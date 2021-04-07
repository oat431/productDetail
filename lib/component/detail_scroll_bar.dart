import 'package:flutter/material.dart';
import 'package:draggable_scrollbar_sliver/draggable_scrollbar_sliver.dart';

class DetailScrollBar extends StatelessWidget {
  Widget custom_widget;
  DetailScrollBar(Widget custom_widget) : this.custom_widget = custom_widget;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollbar(
      controller: ScrollController(),
      child: ListView(
        controller: ScrollController(),
        children: [this.custom_widget],
      ),
      alwaysVisibleScrollThumb: true,
      heightScrollThumb: 0,
      backgroundColor: Colors.orange,
      scrollThumbBuilder: (
        Color backgroundColor,
        Animation<double> thumbAnimation,
        Animation<double> labelAnimation,
        double height, {
        Text labelText,
        BoxConstraints labelConstraints,
      }) {
        return FadeTransition(
          opacity: thumbAnimation,
          child: Container(
            height: 60,
            width: 20.0,
            color: backgroundColor,
          ),
        );
      },
    );
  }
}
