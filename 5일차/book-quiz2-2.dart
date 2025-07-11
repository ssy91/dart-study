// 비동기 함수인 sayHello 를 생성한 후,
// 해당 함수가 실행된지 5초 후에 [Hello] 라는 문자열을 출력하는 코드를 작성해보세요.
// 해당 함수가 종료된 후, main 함수에서는 [Hello 가 출력되었습니다.] 라는
// 문자열이 출력되어야 합니다.

sayHello(int time, var jobEnd) {
  if (time > 0) {
    print("$time 초 남았습니다.");
    Future.delayed(Duration(seconds: 1), () => sayHello(time - 1, jobEnd));
  } else {
    print("Hello");
    jobEnd.activated = true;
  }
}

class Flag {
  late bool _flag;

  Flag(bool givenFlag) : _flag = givenFlag;
  bool get activated => _flag;
  set activated(bool givenFlag) => (_flag = givenFlag);
}

void main() async {
  var finished = Flag(false);

  print("Hello");
  await sayHello(5, finished);

  while (finished.activated == false) {
    await Future.delayed(Duration(seconds: 1));
  }

  print("Hello 가 출력되었습니다.");
}
