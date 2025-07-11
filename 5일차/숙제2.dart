// 다음 코드가 순차적으로 A, B, C 를 출력해야 한다고 가정했을 때,
// 비어있는 부분을 작성해 코드를 완성하세요.
Future<int> doSomething() async {
  var Order = await doSomething();
  print("B");

  return Order;
}

void main() async {
  print("A");
  await Future.delayed(Duration(seconds: 1), () => print("B"));

  print("C");
}
