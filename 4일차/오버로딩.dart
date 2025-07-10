class Integer {
  // 클래스 내에서 선언이 되는 변수 -> 인스턴스 변수
  late int _value;

  // 생성자가 필요 (메인에서 사용해서, 상단에 입력했던 변수에 값을 담아주기 위해)
  // 생성자이름 () {};
  // 생성자의 이름은 클래스의 이름과 동일해야 함
  // 생성자의 소괄호 안에는 사용자가 입력해준 값을 인스턴스 변수에 담기 위해 사용됨
  // 생성할 때 변수를 입력하고 싶지 않다면 대괄호 [] 안에 변수를 선언하고, 기본값을 주면 됨
  Integer([int givenNumber = 0]) {
    // 사용자가 입력한 givenValue 를 우리의 인스턴스 변수 안에 담을거야
    _value = givenNumber;
  }

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
  set changeNumber(int givenNumber) => _value = givenNumber;

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

  // 연산자가 함수 이름이 되는 함수
  int operator +(Integer givenValue) {
    print('integer 클래스에서 사용되는 + 입니다.');
    return _value + givenValue.get(); //_valur + 10;
  }
}

void main() {
  var num1 = Integer(5);
  var num2 = Integer(10);

  // print(num1.add(num2.get()));
  // print(num1.sub(num2.get()));

  print(num1 + num2);

  print(1 + 2);
}
