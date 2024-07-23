import 'package:math_expressions/math_expressions.dart';
import 'package:mobx/mobx.dart';

part 'calc_state.g.dart';

class CalcState = _CalcState with _$CalcState;

abstract class _CalcState with Store {
  Parser parser = Parser();
  ContextModel cntxt = ContextModel();
  @observable
  String userInput = '';

  @observable
  String result = '0';

  @action
  void clean() {
    userInput = '';
    result = '0';
  }

  @action
  void delete() {
    userInput = userInput.substring(0, userInput.length - 1);
  }

  @action
  void addUserInput(String inputChar) {
    if (userInput.isEmpty && inputChar == '-') userInput = '0';
    if (userInput.isEmpty && inputChar == '+') userInput = '0';
    if (userInput.isEmpty && inputChar == '÷') userInput = '0';
    if (userInput.isEmpty && inputChar == '%') return;
    if (userInput.isEmpty && inputChar == '×') return;
    if (userInput.isEmpty && inputChar == '0') return;
    if (userInput.isEmpty && inputChar == '.') userInput = '0';
    userInput += inputChar;
  }

  @action
  void resultFromUserInput() {
    Expression expression = parser.parse(userInput);
    result = expression.evaluate(EvaluationType.REAL, cntxt).toString();
  }

  /*

  @action
  void calculate() {
    this.result = this.userInput;
    this.clean();
  }
  */
  @action
  void clearResult() {
    result = '';
  }
}
