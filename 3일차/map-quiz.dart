// 과일 상점을 뜻하는 shop 변수에
// apple 은 10개, banana 는 5개, mango 는 3개가 존재하도록 Map 을 생성한 뒤,
// 이 상점에서 망고를 판매하고 있는지, 판매하고 있다면
// [이 상점에서는 망고를 $count 개 판매하고 있습니다.]
// 라고 출력하도록 해보자.

void main() {
  Map shop = {"apple": 10, "banana": 5, "mango": 3};
  int count = 0;

  if (shop.containsKey("mango")) {
    count = shop["mango"];
    print("이 상점에서는 망고를 $count 개 판매하고 있습니다.");
  }

  // 심화과정 - 상점에서 망고를 2개 판매했다고 가정한 후,
  //과일 상점에서 현재 팔고있는 망고의 총 개수를 출력

  shop['mango'] = shop['mango'] - 2;

  print(shop);
}
