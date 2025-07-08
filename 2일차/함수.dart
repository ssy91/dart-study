//반환할 함수의 자료형 함수명 () {}
int getMax(var num1, var num2) {
  if (num1 >= num2) {
    return num1;
  } else {
    return num2;
  }
}

void createPlayer({required String name, int level = 1, double exp = 0.00}) {
  print('player $name is $level level and $exp exp.');
}

void hello() {
  print("hello");
}

void main() {
  var player = createPlayer(name: 'jaewon', level: 5, exp: 0.00);
}
