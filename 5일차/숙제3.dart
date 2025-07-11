// NoStringException 이라는 에러 클래스를 생성한 후,
// main 함수에 num 이라는 변수에 10 을 넣어주세요.
// 이후 num의 타입이 string 이 아닐 경우,
// NoStringException 클래스를 통해 다음의 내용이 출력되게 구현하세요.
// [해당 값은 문자열이 아닙니다.]

class NoStringException implements Exception {
  @override
  String toString() {
    return "해당 값은 문자열이 아닙니다.";
  }
}

String calc(var a) {
  var result = a;

  if (result.runtimeType != String) {
    throw NoStringException();
  } else {
    result = "";
  }
  return result;
}

void main() {
  var num = 10;
  var result;

  try {
    result = (num);
  } on NoStringException {
    print("num의 타입이 string 이 아닙니다");
  } finally {
    print("해당 값은 문자열이 아닙니다.");
  }
}
