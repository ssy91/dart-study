// 함수에 async 로 작성이 되어있고, 이 함수 내에서 return 값을 반환해야 하는 경우,
// 반환할 값을 Future<> 로 감싸줘야 함.
Future<String> serveCustomer() async {
  print("serveCustomer: 고객 주문 대기중");
  // customerOrder 변수는 simulateCustomerOrder 함수 앞에 await 를 작성했는데,
  // 이 말은 simulateCustomerOrder() 함수가 동작할 때까지, 밑에 있는 코드를 실행 안하겠다.
  // print("고객의 주문 '$customerOrder' 를 받음"); 는 simulateCustomerOrder() 함수가 동작하기 전까지
  // 실행을 하지 않겠다. 라는 의미를 가집니다.
  var customerOrder = await simulateCustomerOrder();
  print("serveCustomer: 고객의 주문 '$customerOrder' 를 받음");

  return customerOrder;
}

// 반환할 값이 Future 인 경우, 함수에 async가 안붙어 있어도 Future<> 를 감싸줘야 한다.
Future<String> simulateCustomerOrder() {
  return Future.delayed(Duration(seconds: 2), () => '아이스커피');
}

void main() async {
  print("main: 메인 함수 실행");

  var customerOrder = await serveCustomer();
  print("main: 고객의 주문을 받음 : $customerOrder");

  print("main: 메인 함수 종료");
}
