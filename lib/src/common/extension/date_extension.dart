import 'package:app_common_flutter/constant.dart';
import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String format(String pattern) {
    return DateFormat(pattern).format(this);
  }

  String get dateString {
    return DateFormat(Comm.datePattern).format(this);
  }

  String get dateTimeString {
    return DateFormat(Comm.dateTimePattern).format(this);
  }

  bool isSameDay(DateTime dateTime) {
    return year == dateTime.year &&
        month == dateTime.month &&
        day == dateTime.day;
  }

  DateTime get toDate => DateTime(year, month, day);

  DateTime get previous => add(const Duration(days: -1));

  DateTime get next => add(const Duration(days: 1));
}
