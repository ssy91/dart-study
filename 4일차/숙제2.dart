// 사람을 뜻하는 Human 클래스를 생성하고,
// 이름(name), 나이(age), 성별(gender) 을 담을 수 있는 인스턴스 변수를 생성하세요.
class Human {
  late String name;
  late int age;
  late String gender;

  // 모든 값들은 클래스 호출 시 필수적으로 입력을 해야 하며,
  // 생성자를 작성할 땐 named parameter 를 이용해야 합니다. (교재 106 페이지 참고)
  Human({String givenName = "", int givenAge = 0, String givenGender = ""}) {
    name = givenName;
    age = givenAge;
    gender = givenGender;
  }

  String get returnString => "$name";
  String get returnString2 => "$age";
  String get returnString3 => "$gender";
}

// 이후 사용자의 정보를 출력하는 함수인 profile 을 구현해야 하며, 다음의 내용을 출력해야 합니다.
// [안녕하세요. 제 이름은 김철수 이며, 16 살 남성 입니다.]
void main() {
  var newname1 = "김철수";
  var newage1 = "16";
  var newgender1 = "남성";

  print("[안녕하세요. 제 이름은 $newname1 이며,  $newage1 살 $newgender1 입니다.]");
}
