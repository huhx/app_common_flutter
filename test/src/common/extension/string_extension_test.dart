import 'package:app_common_flutter/extension.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("test the capitalize", () {
    test("single character", () {
      final String result = "a".capitalize();

      expect(result, "A");
    });

    test("uppercase world", () {
      final String result = "WORLD".capitalize();

      expect(result, "World");
    });
  });

  group("test the repeat", () {
    test("repeat method", () {
      final String result = "a".repeat(11);

      expect(result, "aaaaaaaaaaa");
    });

    test("multiple operaotr", () {
      final String result = "a" * 11;

      expect(result, "aaaaaaaaaaa");
    });
  });
}
