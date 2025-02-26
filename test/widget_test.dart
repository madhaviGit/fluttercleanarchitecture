// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

/*import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_environments/comman_main.dart';*/
// test/math_utils_test.dart
import 'package:flutter_environments/mathe_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  void main() {
    group('MathUtils', () {
      test('add() should return the sum of two numbers', () {
        // Arrange
        const a = 5;
        const b = 3;

        // Act
        final result = MathUtils.add(a, b);

        // Assert
        expect(result, equals(8));
      });

      test('subtract() should return the difference of two numbers', () {
        // Arrange
        const a = 10;
        const b = 4;

        // Act
        final result = MathUtils.subtract(a, b);

        // Assert
        expect(result, equals(6));
      });

      test('add() should handle negative numbers', () {
        // Arrange
        const a = -5;
        const b = 3;

        // Act
        final result = MathUtils.add(a, b);

        // Assert
        expect(result, equals(-2));
      });

      test('subtract() should handle negative results', () {
        // Arrange
        const a = 3;
        const b = 5;

        // Act
        final result = MathUtils.subtract(a, b);

        // Assert
        expect(result, equals(-2));
      });
    });
  }
}
