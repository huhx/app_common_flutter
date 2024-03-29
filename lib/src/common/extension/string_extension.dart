import 'dart:convert';

import 'package:app_common_flutter/constant.dart';
import 'package:crypto/crypto.dart';
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

  String toSha512() {
    return sha512.convert(utf8.encode(this)).toString();
  }

  String encodeBase64() {
    return base64Encode(utf8.encode(this));
  }

  String decodeBase64() {
    try {
      return utf8.decode(base64Decode(this));
    } on Exception catch (_) {
      return this;
    }
  }

  DateTime parse(String pattern) {
    return DateFormat(pattern).parse(this);
  }

  String repeat(int times) {
    assert(times > 0);
    return this * times;
  }

  bool get isImage {
    return [".jpg", ".jpeg", ".png", ".webp"].any((suffix) => endsWith(suffix));
  }

  bool get isVideo {
    return [".mp4", ".mov"].any((suffix) => endsWith(suffix));
  }

  String capitalize() {
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  String reverse() {
    return String.fromCharCodes(runes.toList().reversed);
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
