// 1 ~ 100 까지의 숫자 중 짝수에 해당하는 수만 List에 담아서 출력해라.

void main() {
  List list = [];

  for (int i = 1; i <= 100; i++) {
    // i가 1로 시작, 100과 같거나 작아질 때까지 더하는 반복문
    if (i % 2 == 0) {
      // i 를 2로 나누었을 때 몫이 0일 경우
      list.add(i);
    }
  }

  print(list);
}
