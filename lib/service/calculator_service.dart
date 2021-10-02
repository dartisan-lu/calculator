import 'package:calculator_app/domain/command.dart';

class CalculatorService {
  int _value = 0;
  int _previous = 0;
  bool _reset = false;
  Command? _command;

  void addNumber(int nbr) {
    if (_reset) {
      _value = 0;
      _reset = false;
    }
    _value = int.parse('$_value$nbr');
  }

  int calculate(Command? cmd, int v1, int v2) {
    switch (cmd) {
      case Command.add:
        return v1 + v2;
      case Command.sub:
        return v1 - v2;
      case Command.mul:
        return v1 * v2;
      case Command.div:
        return v1 ~/ v2;
      default:
        return 0;
    }
  }

  void exec(Command cmd) {
    if (_command == null) {
      _previous = _value;
    } else {
      _previous = calculate(_command, _previous, _value);
    }
    _value = _previous;
    _reset = true;
    _command = cmd;
  }

  void clear() {
    _value = 0;
    _command = null;
  }

  void calc() {
    if (_command != null) {
      _previous = calculate(_command, _previous, _value);
      _value = _previous;
      _reset = true;
      _command = null;
    }
  }

  String getValue() {
    if (_value > 999999999) {
      _value = 999999999;
    }
    return _value.toString();
  }

  void doCommand(Command cmd) {
    switch (cmd) {
      // Number
      case Command.zero:
        return addNumber(0);
      case Command.one:
        return addNumber(1);
      case Command.two:
        return addNumber(2);
      case Command.three:
        return addNumber(3);
      case Command.four:
        return addNumber(4);
      case Command.five:
        return addNumber(5);
      case Command.six:
        return addNumber(6);
      case Command.seven:
        return addNumber(7);
      case Command.eight:
        return addNumber(8);
      case Command.nine:
        return addNumber(9);
      // Commands
      case Command.add:
        return exec(Command.add);
      case Command.sub:
        return exec(Command.sub);
      case Command.mul:
        return exec(Command.mul);
      case Command.div:
        return exec(Command.div);
      case Command.clear:
        return clear();
      case Command.calc:
        return calc();
    }
  }
}
