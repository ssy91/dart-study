// 하나의 클래스에서 여러개의 자료형을 관리해야 할 때
// class 클래스명<T> {
// T 인스턴스변수명;
//}
// class Box<T> {
//   T value;

//   Box(T value) : value = value;

//   T getValue() {
//     print(value.runtimeType);

//     return value;
//   }
// }

// void main() {
//   var box = Box("시계"); // 문자열
//   var box2 = Box(1000); // 정수
//   var box3 = Box(1.1); // 실수

//   print(box.getValue());
//   print(box2.getValue());
//   print(box3.getValue());
// }

class Box {
  late int item;

  Box(int givenItem) : item = givenItem;

  int get() {
    return item;
  }

  void set(newItem) {
    item = newItem;
  }
}

class StringBox {
  late String item;

  StringBox(String givenItem) : item = givenItem;

  String get() {
    return item;
  }

  void set(newItem) {
    item = newItem;
  }
}

// 타입이 바뀌었다고 새롭게 클래스를 하나 더 만들면
// 똑같은 기능을 하는 클래스가 하나 더 필요하게 되네?
// -> 이 때 Generic 을 사용하면 됨.

// Generic을 적용한 클래스 선언 방법
// class 클래스명<T> {}    T는 아무영어로 해도 가능
class NewBox<T> {
  late dynamic item;

  // 사용자가 입력한 givenValue 의 자료형을 항상 따라갈거야.
  // 사용자가 1을 입력하게 되면 T -> int 자료형이 되는거고
  // 사용자가 "시계"를 입력하게 되면 T -> String  자료형이 되는거고
  NewBox(T givenVlaue) {
    item = givenVlaue;
  }

  dynamic get() {
    return item;
  }

  void set(dynamic newItem) {
    item = newItem;
  }
}

void main() {
  var newBox = NewBox("참돔");
  print(newBox.get());

  newBox.set("123123123");
  print(newBox.get());

  newBox.set("123.12");
  print(newBox.get());
}
