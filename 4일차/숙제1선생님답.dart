// 클래스 내에서는 같은 이름을 가진 함수를 사용할 수 있다. (x)

class Test {
  Test() {}

  hello() {
    print("hello");
  }

  hello1() {} //hello 라고 하면 이름이 이미 있다고 오류가 뜸
}

// 추상 클래스는 main() 함수에서 사용할 수 있다. (x)

// 클래스 내에서 연산자를 함수명으로 사용해야 할 때 연산자 앞에 무엇을 작성해야 하는가? (oprator) 교재 196페이지 참고하기
class Test1 {
  Test() {}

  hello() {
    print("hello");
  }

  hello1() {}

  operator +(int numb) {}
}
