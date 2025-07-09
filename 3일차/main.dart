enum Color { red, green, blue }

void main() {
  List list = [1, 2, 3];
  //if else 문
  if (list.isEmpty) {
    print("리스트가 비어있어요.");
  } else {
    print("리스트가 안비어있어요.");
  }

  // 조건적 표현 사용 A? B : C
  // A 조건을 만족하면, B를 실행, 아니면 C를 실행
  list.isEmpty
      ? print("리스트가 비어있어요")
      : list.first == 1
      ? print("첫번째 값은 1입니다.")
      : print("첫번째 값은 1이 아닙니다.");

  int iTemp = 3;
  int? nullTemp;

  print(iTemp);
  print(nullTemp);
}
