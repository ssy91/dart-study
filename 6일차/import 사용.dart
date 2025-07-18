// // dart:io 라는 사용자의 입력을 제어할 수 있는 기능을 가져와서 사용할거야.
import 'dart:convert';
import 'dart:io';

void main() {
  // stdout : standard output 단어를 줄여서 작성한 것
  //          Dart에서 화면 출력 기능을 담당하고 있음
  // stdin : standard input 단어를 줄여서 작성한 것
  //         Dart에서 키보드 입력을 지원하고 있음
  stdout.write("입력해주세요:");
  var userInput = stdin.readLineSync(encoding: utf8);
  stdout.writeln("당신은 이것을 입력했습니다.: $userInput");
  bool doAgain = true;

  while (userInput != "exit") {
    // userInput != "exit" -> true가 아니면 false를 반환하잖아요
    // 만약 userInput 이 exit이라면, doAgain을 true 로 바꾸고
    // exit이 아니면 false로 바꾼다.
    stdout.write("입력해주세요:");
    userInput = stdin.readLineSync(encoding: utf8);
    stdout.writeln("당신은 이것을 입력했습니다.: $userInput");
    stdout.writeln("당신이 입력한 값은 다음 타입을 가지고 있습니다.: ${userInput.runtimeType}");
  }

  stdout.writeln("입력이 종료되었습니다.");

  // writeln : 소괄호 안에 있는 내용을 출력하고, 들여쓰기를 진행한다.
  // write : 소괄호 안에 있는 내용을 출력한다.
  // stdout.write("출력1");
  // stdout.writeln("출력2");
}
