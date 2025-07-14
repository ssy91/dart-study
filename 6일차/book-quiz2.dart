// 다음은 이 프로그램의 실행 결과입니다. 이 실행 결과에 맞는 코드를 짜 보세요.
// 두 수 곱하기 프로그램 - 첫 번째 수 입력: 5
// 두 수 곱하기 프로그램 - 두 번째 수 입력: 6
// 두 수 곱하기 프로그램 - 실행 결과 5 x 6 = 30
// 한 번 더 진행하시겠습니까? 네
// 두 수 곱하기 프로그램 - 첫 번째 수 입력: 7
// 두 수 곱하기 프로그램 - 두 번째 수 입력: 4
// 한 번 더 진행하시겠습니까? 아니오
// 프로그램을 종료합니다.
import 'dart:convert';
import 'dart:io';

void main() {
  var firstNum = <int>[];
  var secondNum = <int>[];
  var againInput; // 사용자가 다시 할건지 아니면 안할건지를 저장하는 변수로, "네" 아니면 "아니오" 를 저장하게 될거에요.
  bool doAgain = true; // againInput이 네 인지 확인하는 변수.

  stdout.write("두 수 곱하기 프로그램 - 첫 번째 수 입력:");
  var input = stdin.readLineSync();
  firstNum.add(int.parse(input!));

  stdout.write("두 수 곱하기 프로그램 - 두 번째 수 입력:");
  input = stdin.readLineSync();
  secondNum.add(int.parse((input?.isEmpty ?? true) ? '1' : input!));

  stdout.writeln(
    "두 수 곱하기 프로그램 - 실행 결과 ${firstNum[0]} * ${secondNum[1]} = ${firstNum[0] * secondNum[1]}",
  );

  // 다시 시도를 하겠다고 하는 경우 반복됨.
  while (doAgain) {
    stdout.write("한 번 더 진행하시겠습니까?");
    againInput = stdin.readLineSync(encoding: utf8);
    // againInput이 네 인 경우 if
    if (againInput == "네") {
      doAgain = true;
    } else {
      doAgain = false;
    }
    // doAgain = true;

    // againInput이 아니오 인 경우 else
    // doAgain = false;
  }

  stdout.writeln("프로그램을 종료합니다.");
}
