import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

extension ScrollExtension on ScrollController {
  void initScrollEvent(
    Function(bool) callback, {
    int scrollThreshold = 50,
  }) {
    bool showBtn = true;
    addListener(() {
      if (offset > position.maxScrollExtent - scrollThreshold &&
          showBtn == true &&
          position.userScrollDirection == ScrollDirection.reverse) {
        showBtn = false;
      }
      if (showBtn == false && position.userScrollDirection == ScrollDirection.forward) {
        showBtn = true;
      }
      callback(showBtn);
    });
  }
}
