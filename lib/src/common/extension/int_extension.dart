import 'package:app_common_flutter/constant.dart';
import 'package:intl/intl.dart';

extension IntExtension on int {
  String get dateString {
    return format(Comm.datePattern);
  }

  String get dateTimeString {
    return format(Comm.dateTimePattern);
  }

  String format(String pattern) {
    return DateFormat(pattern).format(DateTime.fromMillisecondsSinceEpoch(this));
  }

  String get timeString {
    if (this <= 0) {
      return "00:00";
    }
    final int second = this % 60;
    final int minute = (this / 60).floor();

    final String secondString = second < 10 ? "0$second" : "$second";
    final String minuteString = minute < 10 ? "0$minute" : "$minute";
    return "$minuteString:$secondString";
  }
}
