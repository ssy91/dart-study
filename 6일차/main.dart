// // import 'dart:io';

// // void main() {
// //   var iList = <int>[];
// //   var sList = <String>[];

// //   stdout.write("숫자 두 개를 , 를 통해 입력해주세요. (예시: 3, 3)");
// //   var input = stdin.readLineSync();
// //   sList = input!.split(',');
// //   for (var item in sList) {
// //     iList.add(int.parse(item));
// //   }

// //   // 화면에 값을 출력할 때, string 과 string 을 + 하게 되면 해당 문자열들끼리 붙여 쓴 값이 출력됨
// //   // int 와 int 를 + 했을 땐, 두 수를 더해진 값이 출력됨
// //   stdout.writeln(
// //     "더하기 프로그램을 진행합니다. ${iList[0]} + ${iList[1]} = ${iList[0] + iList[1]}",
// //   );
// // }

// import 'dart:convert';
// import 'dart:io';

// void main() {
//   var firstNum, secondNum, againInput;
//   bool doAgain = true;

//   while (doAgain) {
//     stdout.write('두 수 곱하기 프로그램 - 첫 번째 수 입력:');
//     firstNum = stdin.readLineSync(); // String 으로 첫 번째 수가 firstNum 에 저장됨
//     stdout.write('두 수 곱하기 프로그램 - 두 번째 수 입력:');
//     secondNum = stdin.readLineSync(); //// String 으로 두 번째 수가 secondNum 에 저장됨
//     stdout.writeln(
//       "두 수 곱하기 프로그램 - 실행 결과 $firstNum x $secondNum = ${int.parse(firstNum) * int.parse(secondNum)}",
//     );
//     stdout.write("한 번 더 진행하시겠습니까?");
//     againInput = stdin.readLineSync(encoding: utf8);

//     if (againInput == "네") {
//       doAgain = true;
//     } else if (againInput == "아니오") {
//       doAgain = false;
//     }
//   }

//   stdout.writeln("프로그램을 종료합니다.");
// }

import 'dart:convert';
import 'dart:io';

void main() {
  var dayInput, doAgainInput;
  bool doAgain = true;

  var foods = {
    "7/14": "어묵국, 흰쌀밥, 포기김치",
    "7/15": "된장국, 잡곡밥, 어묵볶음, 비엔나소세지, 깍두기",
    "7/16": "휴무일",
  };

  //while 에서 bool 을 조건으로 입력하는 경우,
  // while(doAagin) 과 while(doAgain == true) 는 똑같은 동작을 한다.
  while (doAgain == true) {
    stdout.write("식단표 출력 프로그램 - 날짜를 입력하세요 :");
    dayInput = stdin.readLineSync(); // 날짜입력

    // 날짜 예외처리1. 입력한 날짜에 값이 존재하는가?
    if (foods.containsKey(dayInput) == true) {
      // 날짜 예외처리2. 입력한 날짜의 식단표 내용이 "휴무일" 인가?
      if (foods[dayInput] == "휴무일") {
        stdout.writeln("식단표 출력 프로그램 -급식이 진행하지 않는 날입니다.");
      } else {
        stdout.writeln("식단표 출력 프로그램 - $dayInput의 식단표 : ${foods[dayInput]}");
      }
    } else {
      stdout.writeln("식단표 출력 프로그램 -급식이 존재하지 않는 날입니다");
    }

    stdout.write("식단표 출력 프로그램 - 이어서 출력할까요? :");
    doAgainInput = stdin.readLineSync(encoding: utf8); // "네" 또는 "아니오" 를 입력

    if (doAgainInput == "아니오") {
      doAgain = false;
    } else {
      doAgain = true;
    }
  }

  stdout.writeln("프로그램을 종료합니다.");
}
