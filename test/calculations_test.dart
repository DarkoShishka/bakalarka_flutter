import 'package:bakalarka_flutter/calulations/Stock.dart';
import 'package:bakalarka_flutter/calulations/calculations.dart';
import 'package:flutter_test/flutter_test.dart';
// Import the function you want to test

void main() {
  group('Arbitrage function tests', () {
    test('Arbitrage exists', () {
      // Arrange
      Stock stockOne = Stock(100, 110, 90, 0);
      Stock stockTwo = Stock(80, 90, 70, 0);

      // Act
      bool result = arbitrage(stockOne, stockTwo);

      // Assert
      expect(result, true);
    });

    test('Arbitrage does not exist', () {
      // Arrange
      Stock stockOne = Stock(100, 110, 90, 0);
      Stock stockTwo = Stock(110, 120, 100, 0);

      // Act
      bool result = arbitrage(stockOne, stockTwo);

      // Assert
      expect(result, false);
    });

    test('Denominator is zero', () {
      // Arrange
      Stock stockOne = Stock(100, 110, 90, 0);
      Stock stockTwo = Stock(110, 120, 90, 0);

      // Act
      bool result = arbitrage(stockOne, stockTwo);

      // Assert
      expect(result, false);
    });
  });
}
