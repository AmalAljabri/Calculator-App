import 'package:get/get.dart';

class CalculatorController extends GetxController {
  dynamic text = '0';
  double num1 = 0;
  double num2 = 0;
  dynamic result = '';
  dynamic finalResult = '';
  dynamic currentOperation = '';
  dynamic previousOperation = '';

  void calculation(buttonText) {
    if (buttonText == 'AC') {
      text = '0';
      num1 = 0;
      num2 = 0;
      result = '';
      finalResult = '0';
      currentOperation = '';
      previousOperation = '';
    } else if (currentOperation == '=' && buttonText == '=') {
      if (previousOperation == '+') {
        finalResult = Addition();
      } else if (previousOperation == '-') {
        finalResult = Subtraction();
      } else if (previousOperation == '×') {
        finalResult = Multiplication();
      } else if (previousOperation == '÷') {
        finalResult = Division();
      }
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '×' ||
        buttonText == '÷' ||
        buttonText == '=') {
      if (num1 == 0) {
        num1 = double.parse(result);
      } else {
        num2 = double.parse(result);
      }

      if (currentOperation == '+') {
        finalResult = Addition();
      } else if (currentOperation == '-') {
        finalResult = Subtraction();
      } else if (currentOperation == '×') {
        finalResult = Multiplication();
      } else if (currentOperation == '÷') {
        finalResult = Division();
      }
      previousOperation = currentOperation;
      currentOperation = buttonText;
      result = '';
    } else if (buttonText == '%') {
      result = num1 / 100;
      finalResult = doesContainDecimal(result);
    } else if (buttonText == '.') {
      if (!result.toString().contains('.')) {
        result = result.toString() + '.';
      }
      finalResult = result;
    } else if (buttonText == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-' + result.toString();
      finalResult = result;
    } else {
      result = result + buttonText;
      finalResult = result;
    }
    text = finalResult;
    update();
  }

  String Addition() {
    result = (num1 + num2).toString();
    num1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String Subtraction() {
    result = (num1 - num2).toString();
    num1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String Multiplication() {
    result = (num1 * num2).toString();
    num1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String Division() {
    result = (num1 / num2).toString();
    num1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }
}
