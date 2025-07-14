// 6일차 폴더에 quiz6.txt 를 만들고, 해당 파일에 다음 코드 줄을 입력하세요

// 해당 파일을 한 줄씩 내용을 조회하는 함수를 하나 생성하고,
// 각 라인 별 숫자들을 더한 값을 다음과 같이 저장하여 quiz5-answer.txt 로 저장하는 기능을 구현하세요.
// 1 + 1 = 2
// 1 + 2 = 3
// ....
// 2 + 9 = 11

import 'dart:io';
import 'dart:convert';

Future<List<String>> readFileToList(String filename) async {
  Stream<String> lines = File(
    filename,
  ).openRead().transform(utf8.decoder).transform(LineSplitter());
  try {
    List<String> sList = [];

    await for (var line in lines) {
      sList.add(line);
    }
    return sList;
  } catch (error) {
    throw error;
  }
}

void main() async {
  List<String> fileContent = await readFileToList("./6일차/quiz6.txt");
  print(fileContent);
  var sList = [];
  var iVal1 = 0;
  var iVal2 = 0;
  var count = 0;
  var dstSink = File("./6일차/quiz5-answer.txt").openWrite();

  dstSink.write(":=> FILE ACCESSED ${DateTime.now()}\n");
  for (var fileLine in fileContent) {
    sList = fileLine.split(',');
    iVal1 = int.parse(sList[0]);
    iVal2 = int.parse(sList[1]);

    print("$iVal1 + $iVal2 = ${iVal1 + iVal2}");
    dstSink.writeln("$iVal1 + $iVal2 = ${iVal1 + iVal2}");
    count++;
  }

  dstSink.write(':=> $count ITEMS CALCULATED');

  dstSink.close();
}
