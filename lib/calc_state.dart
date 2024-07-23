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
    this.userInput = '';
  }

  @action
  void delete() {
    this.userInput = this.userInput.substring(0, this.userInput.length - 1);
  }

  @action
  void addUserInput(String inputChar) {
    this.userInput += inputChar;
  }

  @action
  void resultFromUserInput() {
    Expression expression = parser.parse(this.userInput);
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
    this.result = '';
  }
}
