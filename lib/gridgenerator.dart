import 'package:test_app/global.dart';

import 'button.dart';

var calcGrid = [
  ButtonDigit.orange(
    label: "AC",
    onTap: () => calculator.clean(),
  ),
  ButtonDigit.red(
    label: "DEL",
    onTap: () => calculator.delete(),
  ),
  ButtonDigit.blue(
    label: "%",
    onTap: () => calculator.addUserInput("%"),
  ),
  ButtonDigit.blue(
    label: "÷",
    onTap: () => calculator.addUserInput("÷"),
  ),
  ButtonDigit.grey(
    label: "7",
    onTap: () => calculator.addUserInput("7"),
  ),
  ButtonDigit.grey(
    label: "8",
    onTap: () => calculator.addUserInput("8"),
  ),
  ButtonDigit.grey(
    label: "9",
    onTap: () => calculator.addUserInput("9"),
  ),
  ButtonDigit.blue(
    label: "x",
    onTap: () => calculator.addUserInput("*"),
  ),
  ButtonDigit.grey(
    label: "4",
    onTap: () => calculator.addUserInput("4"),
  ),
  ButtonDigit.grey(
    label: "5",
    onTap: () => calculator.addUserInput("5"),
  ),
  ButtonDigit.grey(
    label: "6",
    onTap: () => calculator.addUserInput("6"),
  ),
  ButtonDigit.blue(
    label: "-",
    onTap: () => calculator.addUserInput("-"),
  ),
  ButtonDigit.grey(
    label: "1",
    onTap: () => calculator.addUserInput("1"),
  ),
  ButtonDigit.grey(
    label: "2",
    onTap: () => calculator.addUserInput('2'),
  ),
  ButtonDigit.grey(
    label: "3",
    onTap: () => calculator.addUserInput("3"),
  ),
  ButtonDigit.blue(
    label: "+",
    onTap: () => calculator.addUserInput("+"),
  ),
  ButtonDigit.blue(
    label: "±",
    onTap: () => null,
  ),
  ButtonDigit.grey(
    label: "0",
    onTap: () => calculator.addUserInput("0"),
  ),
  ButtonDigit.grey(
    label: ".",
    onTap: () => calculator.addUserInput("."),
  ),
  ButtonDigit.blue(
    label: "=",
    onTap: () => calculator.resultFromUserInput(),
  ),
];
