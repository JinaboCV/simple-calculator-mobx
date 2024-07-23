// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalcState on _CalcState, Store {
  late final _$userInputAtom =
      Atom(name: '_CalcState.userInput', context: context);

  @override
  String get userInput {
    _$userInputAtom.reportRead();
    return super.userInput;
  }

  @override
  set userInput(String value) {
    _$userInputAtom.reportWrite(value, super.userInput, () {
      super.userInput = value;
    });
  }

  late final _$resultAtom = Atom(name: '_CalcState.result', context: context);

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  late final _$_CalcStateActionController =
      ActionController(name: '_CalcState', context: context);

  @override
  void clean() {
    final _$actionInfo =
        _$_CalcStateActionController.startAction(name: '_CalcState.clean');
    try {
      return super.clean();
    } finally {
      _$_CalcStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void delete() {
    final _$actionInfo =
        _$_CalcStateActionController.startAction(name: '_CalcState.delete');
    try {
      return super.delete();
    } finally {
      _$_CalcStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addUserInput(String inputChar) {
    final _$actionInfo = _$_CalcStateActionController.startAction(
        name: '_CalcState.addUserInput');
    try {
      return super.addUserInput(inputChar);
    } finally {
      _$_CalcStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resultFromUserInput() {
    final _$actionInfo = _$_CalcStateActionController.startAction(
        name: '_CalcState.resultFromUserInput');
    try {
      return super.resultFromUserInput();
    } finally {
      _$_CalcStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearResult() {
    final _$actionInfo = _$_CalcStateActionController.startAction(
        name: '_CalcState.clearResult');
    try {
      return super.clearResult();
    } finally {
      _$_CalcStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userInput: ${userInput},
result: ${result}
    ''';
  }
}
