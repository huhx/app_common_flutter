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

  test("test toSolar", () {
    final DateTime dateTime = DateTime(2023, 9, 10);

    final DateTime result = dateTime.toSolar;

    expect(result.year, 2023);
    expect(result.month, 10);
    expect(result.day, 24);
  });

    test("test toLunar", () {
    final DateTime dateTime = DateTime(2023, 10, 24);

    final DateTime result = dateTime.toLunar;

    expect(result.year, 2023);
    expect(result.month, 9);
    expect(result.day, 10);
  });
}
