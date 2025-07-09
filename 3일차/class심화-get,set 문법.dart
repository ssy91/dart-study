// 주석처리할 부분 드래그 후 ctrl 누르고 k와 c 차례로 누르기 주석 지우기 ctrl k + u

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
}

void main() {
  //클래스 사용
  var num1 = Integer(12345648);

  print(num1.get());

  num1.set(112);

  print(num1.get());
}
