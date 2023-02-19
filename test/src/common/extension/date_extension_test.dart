import 'package:app_common_flutter/extension.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("test previous day", () {
    final DateTime dateTime = DateTime(2022, 12, 1);

    final DateTime result = dateTime.previous;

    expect(result.year, 2022);
    expect(result.month, 11);
    expect(result.day, 30);
  });

  test("test next day", () {
    final DateTime dateTime = DateTime(2022, 12, 31);

    final DateTime result = dateTime.next;

    expect(result.year, 2023);
    expect(result.month, 1);
    expect(result.day, 1);
  });
}
