import 'package:mobx/mobx.dart';

part 'calc_state.g.dart';

class CalcState = _CalcState with _$CalcState;

abstract class _CalcState with Store {
  @observable
  String userInput = '';

  @observable
  String result = '';

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

  /*

  @action
  void calculate() {
    this.result = this.userInput;
    this.clean();
  }

  @action
  void clearResult() {
    this.result = '';
  }
  */
}
