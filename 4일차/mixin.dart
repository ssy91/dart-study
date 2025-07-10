class Integer {
  late int _value;

  Integer([int givenNumber = 0]) {
    _value = givenNumber;
  }

  int get() {
    return _value;
  }

  // 인스턴스 변수를 수정하기 위한 함수
  void set(int givenNumber) {
    _value = givenNumber;
  }

  // get, set을 계속 작성하기 너무 많으니 이걸 정리해서 getter 와 setter 로 만들어보자
  // getter 의 사용법
  // 반환할 자료타입 get 함수명 => 반환할값;
  String get returnString => "$_value";

  // setter 의 사용법
  // void set 함수명(사용자입력값) => 변경할내용;
  set changeInteger(int givenNumber) => _value = givenNumber;

  // 오버로딩 = 기존 클래스에서 함수를 추가하여 클래스를 강화하는 것.
  // 함수의 선언 방법
  // 반환할값 함수명 (사용자가 입력해야 하는 값) { 실제 동작할 내용 }

  // 더하기
  int add(int givenValue) {
    return _value + givenValue;
  }

  // 빼기
  int sub(int givenValue) {
    return _value - givenValue;
  }

  String get asString => "$_value";

  // 연산자가 함수 이름이 되는 함수
  int operator +(Integer givenValue) {
    print('integer 클래스에서 사용되는 + 입니다.');
    return _value + givenValue.get(); //_valur + 10;
  }
}

class newInteger extends Integer with ActivationFlag {
  List<int> _list = [];

  newInteger([int givenValue = 0]) {
    _value = givenValue;
  }

  @override
  void set(int givenValue) {
    if (activated == true) {
      _list.add(_value);
      print("set 함수 실행함. 현재 저장된 결과는 $_list 임");
    } else {
      print("set 함수 실행 안함");
    }

    super.set(givenValue);
  }

  @override
  String get asString => "현재 값: $_value, 기존에 지정했었던 값들: $_list";

  getOld() {
    return _list;
  }
}

mixin ActivationFlag on Integer {
  bool _flag = true;

  bool get activated => _flag;
  set activated(bool givenFlag) => (_flag = givenFlag);
}

void main() {
  var num1 = newInteger();

  num1.set(2);
  num1.set(4);

  num1.activated = false;

  num1.set(6);
  num1.set(8);

  num1.activated = true;
  num1.set(8);
}
