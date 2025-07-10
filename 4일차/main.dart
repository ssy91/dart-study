class Integer {
  // 클래스 내에서 선언이 되는 변수 -> 인스턴스 변수
  late int _value;

  // 생성자를 만드는 방법 1. [] 이용
  // Integer([int givenNumber = 0]) {

  //   _value = givenNumber;
  // }

  // 생성자를 만드는 방법 2. : 이용
  Integer([int givenValue = 0]) : _value = givenValue;

  // 인스턴스 변수를 반환하기 위한 함수
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

// extends = 다음으로 적힐 클래스명에 있는 모든 내용들을 가져올거야.
// class newInteger extends 클래스명 {}

class newInteger extends Integer {
  // List<자료형> = 이 자료형에 속하는 데이터만 이 리스트에 담을거야.
  List<int> _list = [];

  newInteger([int givenValue = 0]) {
    _value = givenValue;
  }

  @override // Integer 클래스에 있는 코드에서 이 기능들을 더 추가해서 쓸거야.
  void set(int givenValue) {
    _list.add(_value);

    // super = 우리가 클래스를 생성할 때 extends 뒤에 쓴 클래스를 지칭함.
    super.set(givenValue);
  }

  @override
  String get asString => "현재 값: $_value, 기존에 지정했었던 값들: $_list";

  getOld() {
    return _list;
  }
}

void main() {}
