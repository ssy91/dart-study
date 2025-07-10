//사용자의 이름, 전화번호, 나이를 입력받아 함수 사용
//[제 이름은 $name, 전화번호는 $phone 이며, 제 나이는 $age 입니다.]
// 이때 나이는 필수 입력이 아니며 나이를 입력하지 않은 경우 $age 부분을 "비공개"로 변경해서 표기

void propile({
  required String name,
  required String phone,
  dynamic age = "비공개",
}) {
  print('제 이름은 $name, 전화번호는 $phone 이며, 제 나이는 $age 입니다.');
}

void main() {
  propile(name: "소연", phone: "010-000-1234", age: 40);
}
