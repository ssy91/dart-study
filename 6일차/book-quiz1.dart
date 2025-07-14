// 다음의 내용을 출력하고, 사용자가 입력한 내용을 그대로 출력하는 프로그램을 만들고자 합니다.
// [안녕하세요. 출력하실 내용을 입력해주세요:]
// 이 입력 문장 바로 뒤에 사용자가 입력할 수 있어야 하며,
// 사용자가 [그만] 이라는 문자열을 입력하기 전까지는 계속 사용자가 입력을 할 수 있고,
// [그만] 을 입력할 경우, [프로그램을 종료합니다.] 라는 문자열을 출력하는 프로그램을 만들어보세요.

import 'dart:convert';
import 'dart:io';

void main() {
  stdout.write("안녕하세요. 출력하실 내용을 입력해주세요:");
  var userInput = stdin.readLineSync(encoding: utf8);

  while (userInput != "그만") {
    stdout.write("안녕하세요. 출력하실 내용을 입력해주세요:");
    userInput = stdin.readLineSync(encoding: utf8);
    stdout.writeln("입력한값: $userInput");
  }

  stdout.writeln("프로그램을 종료합니다.");
}
