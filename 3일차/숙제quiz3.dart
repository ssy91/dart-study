// name 과 age 를 입력받을 수 있는 Player Class 를 만들고,
// 해당 플레이어의 이름, 나이 를 확인할 수 있는 getter 함수와
// 해당 내역을 수정할 수 있는 setter 함수를 만들어라.

import 'class심화-getter,setter 문법.dart';

class Player {
  late int _value;
  Player([int givenName = 0]) {
    _value = givenName;
  }

  int get() {
    return _value;
  }

  void set(int givenName) {
    _value = givenName;
  }

  String get returnString => "$_value";
}

void main() {
  var name = Player(123);
}
