// Future.Delayed 함수를 이용하여 다음과 같은 출력을 반환하는 프로그램을 만들어보세요.
// Delayed 함수에서는 [10초 뒤에 실행된 코드입니다.] 가 출력되어야 합니다.
// 출력 결과 :
// 안녕하세요
// 10초 뒤에 실행된 코드입니다.
// 안녕하세요

void main() {
  print("안녕하세요");

  Future.delayed(Duration(seconds: 2), () => print("10초 뒤에 실행된 코드입니다."));

  print("안녕하세요");
}
