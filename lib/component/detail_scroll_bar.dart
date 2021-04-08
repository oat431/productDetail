import 'package:flutter/material.dart';
import 'package:draggable_scrollbar_sliver/draggable_scrollbar_sliver.dart';

class DetailScrollBar extends StatelessWidget {
  Widget custom_widget;
  DetailScrollBar(Widget custom_widget) : this.custom_widget = custom_widget;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollbar.rrect(
      child: ListView(
        children: [this.custom_widget],
      ),
      controller: ScrollController(),
      alwaysVisibleScrollThumb: true,
      backgroundColor: Colors.orange,
      heightScrollThumb: 80.0,
    );
  }
}
