import 'Stock.dart';

bool arbitrage(Stock stockOne, Stock stockTwo) {
  double stockOneUp = stockOne.priceSituationOne / stockOne.priceRightNow;
  double stockTwoUp = stockTwo.priceSituationOne / stockTwo.priceRightNow;
  double stockOneDown = stockOne.priceSituationTwo / stockOne.priceRightNow;
  double stockTwoDown = stockTwo.priceSituationTwo / stockTwo.priceRightNow;
  double denominator = (stockOneUp - stockOneDown + stockTwoDown - stockTwoUp);
  double result = 0;

  print("stockOneUp: " + stockOneUp.toString());
  print("stockTwoUp: " + stockTwoUp.toString());
  print("stockOneDown: " + stockOneDown.toString());
  print("stockTwoDown: " + stockTwoDown.toString());

  if (denominator != 0) {
    result = (((stockOneUp * stockTwoDown) - (stockOneDown * stockTwoUp) -
        (stockOneUp - stockOneDown) - (stockTwoDown - stockTwoUp)) /
        denominator);
  } else {
    print("Denominator: " + denominator.toString());
    return false;
  }

  if (result != 0) {
    print("Arbitrage exists");
    print("Result: " + result.toString());
    return true;
  } else {
    print("Arbitrage doesn't exist");
    print("Result: " + result.toString());
    return false;
  }
}
