import 'package:app_common_flutter/constant.dart';
import 'package:intl/intl.dart';

extension StringExtension on String {
  int toInt({int? defaultValue}) {
    return int.tryParse(this) ?? defaultValue!;
  }

  DateTime toDateTime() {
    return parse(Comm.dateTimePattern);
  }

  DateTime toDate() {
    return parse(Comm.datePattern);
  }

  DateTime parse(String pattern) {
    return DateFormat(pattern).parse(this);
  }

  List<String> chunk(int chunkSize) {
    assert(chunkSize > 0);
    final int chunkCount = (length / chunkSize).ceil();

    return List<String>.generate(chunkCount, (index) {
      final int sliceStart = index * chunkSize;
      final int sliceEnd = sliceStart + chunkSize;
      return substring(sliceStart, (sliceEnd < length) ? sliceEnd : length);
    });
  }
}
