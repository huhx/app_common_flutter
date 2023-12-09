import 'package:app_common_flutter/constant.dart';
import 'package:app_common_flutter/support.dart';
import 'package:intl/intl.dart';
import 'package:lunar/lunar.dart';

extension DateExtension on DateTime {
  String format(String pattern) {
    return DateFormat(pattern).format(this);
  }

  String get dateString {
    return DateFormat(Comm.datePattern).format(this);
  }

  DateTime get toSolar {
    return CalendarConverter.toSolar(year, month, day);
  }

  DateTime get toLunar {
    Lunar lunar = Lunar.fromDate(this);
    return DateTime(
      lunar.getYear(),
      lunar.getMonth(),
      lunar.getDay(),
      lunar.getHour(),
      lunar.getMinute(),
      lunar.getSecond(),
    );
  }

  int passDays(DateTime dateTime) {
    return difference(dateTime).inDays;
  }

  String get timeString {
    return DateFormat('hh:mm:ss').format(this);
  }

  String get weekdayName {
    const List<String> list = ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'];
    return list[weekday - 1];
  }

  String get dateTimeString {
    return DateFormat(Comm.dateTimePattern).format(this);
  }

  bool isSameDay(DateTime dateTime) {
    return year == dateTime.year && month == dateTime.month && day == dateTime.day;
  }

  bool get isToday => isSameDay(DateTime.now());

  int get age {
    final DateTime currentDate = DateTime.now();
    final int currentMonth = currentDate.month;
    final int birthdayMonth = month;
    if (birthdayMonth > currentMonth || (currentMonth == birthdayMonth && currentDate.day < day)) {
      return currentDate.year - year - 1;
    }
    return currentDate.year - year;
  }

  DateTime get toDate => DateTime(year, month, day);

  DateTime get previous => add(const Duration(days: -1));

  DateTime get next => add(const Duration(days: 1));
}
