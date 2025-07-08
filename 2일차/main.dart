void main() {
  //구구단 1~9단 중 짝수단만 출력하는 반복문 작성
  //1. for 문 사용
  int dan, number;
  for (dan = 2; dan <= 8; dan = dan + 2) {
    for (number = 1; number <= 9; number++) {
      print("$dan x $number = ${dan * number}");
    }
  }

  //while 문 사용
  int dan2 = 2, number2 = 1;

  while (dan2 <= 8) {
    while (number2 <= 9) {
      print("$dan2 x $number2 = ${dan2 * number2}");

      number2++;
    }
    number2 = 1;
    dan2 = dan2 + 2;
  }
}
