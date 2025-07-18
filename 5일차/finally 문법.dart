void main() {
  int num1 = 1;
  int num2 = 0;
  int result = 0;

  // try = 일단 먼저 실행을 해봐라
  // catch = try 중 에러가 발생하면, try 실행을 멈추고 catch 이후의 내용을 실행해라.

  // try-catch 문법 사용 방법: try {} catch(error) {} 모든 에러
  // try-on 문법 사용 방법: try {} on 에러이름 {}  특정한 에러일 때 지정할 수 있음
  // finally = try {} catch(error){} 이 모든걸 수행하고 최종적으로 한 번 실행됨.
  try {
    result = num1 ~/ num2;
  } on UnsupportedError {
    print("on Unsupported Error: num2 의 값은 0입니다.");
    num2 = 1;
    print("on Unsupported Error: num2 의 값을 1로 바꾸고, 재시도합니다.");
    result = num1 ~/ num2;
  } catch (error) {
    print("알수 없는 에러가 발생했습니다.");
  } finally {
    print("결과는 : $result 입니다.");
  }
}
