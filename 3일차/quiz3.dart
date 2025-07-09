// 새로운 리스트 "1" "2" "3" 를 저장한 리스트를 생성하고
// 기존에 존재하는 리스트에 추가한 뒤, 값을 출력해보자

void main() {
  List list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  list.insert(0, 9);

  List newList = ["1", "2", "3"];
  list.addAll(newList);

  print(list);
}
