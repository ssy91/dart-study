import 'dart:io';
import 'dart:convert';

Future<String> readFileToString(String filename) async {
  var file = File(filename);
  String fileContent = await file.readAsString();
  return fileContent;
}

void main() async {
  var result = await readFileToString(
    "C:/Users/ASD/Desktop/testapp/dart-study/6일차/src.txt",
  );

  print(result);
}
