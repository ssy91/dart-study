// 1 ~ 10 까지의 리스트를 생성한 뒤, 첫 번째 인덱스에 9 라는 값을 넣어보자

void main() {
  List list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  list.insert(0, 9);

  print(list);
}
