// 내용을 출력할 때 사용했던 기능들
// print()
// stdout.write()

import 'dart:io';
import 'dart:async';
import 'dart:math';

Future<int> asyn1() async {
  print("[4] asyn1(): 1 second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] async1(): finished.");

  return 10;
}

Future<int> asyn2() async {
  print("[4] asyn2(): 2 second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] asyn2(): 1 second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] async2(): finished.");

  return 20;
}

Future<int> asyn3() async {
  print("[4] asyn3(): 3 second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] asyn3(): 2 second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] asyn3(): 1 second left.");
  await Future.delayed(Duration(seconds: 1));
  print("[4] async3(): finished.");

  return 30;
}

void main() {
  // List<String> fruits = ["Apple is Red", ' Banana ', 'Mango'];
  // print("[1] Mangd in List ? : ${fruits.contains('Mango')}");
  // print("[1] Starts with 'Apple' ? : ${fruits[0].contains('Apple')}");
  // print("[1] Ends with 'Red'  : ${fruits[0].endsWith('Red')}");
  // print("[1] Index of 'Red'  : ${fruits[0].indexOf('Red')}");
  // print("[1] Trim ' Banana '  : ${fruits[1].trim()}");

  // // Platform - dart:io 라이브러리에서 제공해주는 기능
  // // Native 환경 -> 윈도우OS, 맥OS

  // String os = Platform.operatingSystem;
  // String path = Platform.script.toFilePath();
  // print("[2] OS: $os");
  // print("[2] Source File: $path");

  // // dart:math - 사칙연산 등 수학 계산을 지원해주는 라이브러리
  // print("[3] max(2,4) : ${max(2, 4)}");
  // print("[3] min(2,4) : ${min(2, 4)}");
  // print("[3] e : $e");
  // print("[3] pi : $pi");

  // 비동기 처리 라이브러리
  var t1 = DateTime.now();

  Future.wait([asyn1(), asyn2(), asyn3()])
      .then((List<int> nums) {
        var t2 = DateTime.now();

        var sum = nums.reduce((curr, next) => curr + next);
        print('[4] Sum: $sum < Time: ${t2.difference(t1)} >');
      })
      .catchError(print);
}
