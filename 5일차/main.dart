int calc(int a, int b) {
  int result = 0;

  try {
    result = a ~/ b;
  } on UnsupportedError {
    print("on Unsupported Error: num2 의 값은 0입니다.");
    b = 1;
    print("on Unsupported Error: num2 의 값을 1로 바꾸고, 재시도합니다.");
    result = a ~/ b;
  } catch (error) {
    print("알수 없는 에러가 발생했습니다.");
  }

  // 해당 try-catch 구문에서 발생한 에러를 try-catch 바깥으로 다시 던지겠다.

  return result;
}

void main() {
  int num1 = 1;
  int num2 = 0;
  int result = 0;

  try {
    result = calc(num1, num2);
  } finally {
    print("결과는 : $result 입니다.");
  }
}
