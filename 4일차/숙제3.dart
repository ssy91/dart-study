// 탈것 이라는 뜻을 가진 Vehicle 추상 클래스에 drive 라는 기능을 추가하세요.
abstract class Vehicle {
  void drive();
}

// 이후 Boat 와 Car 라는 클래스를 구현한 후,
class Boat implements Vehicle {
  late String boat;
  late String water;

  @override
  void drive() {
    print("$boat가 $water 위를 떠답니다.");
  }

  Boat([String givenboat = "", String givenwater = ""]) {
    boat = givenboat;
    water = givenwater;
  }
}

void main() {
  var boat = Boat('보트', '물');
}

// 각각의 클래스 별 drive 함수 실행시 다음의 내용을 출력하도록 구현하세요.
// Boat : [보트가 물 위를 떠다닙니다.], Car : [자동차가 도로를 달려다닙니다.]
