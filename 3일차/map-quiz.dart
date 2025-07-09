// 과일 상점을 뜻하는 shop 변수에
// apple 은 10개, banana 는 5개, mango 는 3개가 존재하도록 Map 을 생성한 뒤,
// [이 상점에서는 망고를 $count 개 판매하고 있습니다.]
// 라고 출력하도록 해보자.

void main() {
  Map shop = {"apple": 10, "banana": 5, "mango": 3};
  var empty = <dynamic, dynamic>{};

  print(shop);
  var count = 0;
  print(shop.containsKey("mango"));

  print(shop["mango"]);

  print("[이 상점에서는 망고를 $count 개 판매하고 있습니다.]");
}
