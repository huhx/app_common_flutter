import 'package:intl/intl.dart';

extension StringExtension on String {
  int toInt({int? defaultValue}) {
    return int.tryParse(this) ?? defaultValue!;
  }

  DateTime toDate({String pattern = "yyyy-MM-dd"}) {
    return DateFormat(pattern).parse(this);
  }
}
