// 여러 클래스들이 공통적으로 가지고 있는 기능이지만,
// 각 클래스들마다 미세하게 작동하는 부분이 다른 경우
// 이런 기능이 있다 라고 작성만 하는 것
abstract class Rectangle {
  void draw();
}

class Circle implements Rectangle {
  late int radius;
  late int moveRight;

  @override
  void draw() {
    print("radius가 $radius 인 원을 그리고 moveRight가 $moveRight 로 이동합니다.");
  }

  Circle([int givenRadius = 1, int givenmoveRight = 1]) {
    radius = givenRadius;
    moveRight = givenmoveRight;
  }
}

class Square implements Rectangle {
  late int garo, sero;

  @override
  void draw() {
    print("가로가 $garo, 세로가 $sero 인 사각형을 그립니다.");
  }

  Square([int givenGaro = 5, int givenSero = 7])
    : garo = givenGaro,
      sero = givenSero;
}

void main() {
  var circle = Circle(6, 5);
  var square = Square(10, 24);
  // 추상클래스는 실체를 가질 수 없다.
  // 밑의 코드를 작성하면 에러가 난다.
  // var rect = Rectangle();

  circle.draw();
  square.draw();
}
