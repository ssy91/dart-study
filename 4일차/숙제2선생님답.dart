// 사람을 뜻하는 Human 클래스를 생성하고,
// 이름(name), 나이(age), 성별(gender) 을 담을 수 있는 인스턴스 변수를 생성하세요.
// 모든 값들은 클래스 호출 시 필수적으로 입력을 해야 하며,
// 생성자를 작성할 땐 named parameter 를 이용해야 합니다. (교재 106 페이지 참고)
// 이후 사용자의 정보를 출력하는 함수인 profile 을 구현해야 하며, 다음의 내용을 출력해야 합니다.
// [안녕하세요. 제 이름은 김철수 이며, 16 살 남성 입니다.]

class Human {
  late String name;
  late int age;
  late String gender;

  // 기본적으로 생성자를 만드는 방법
  // Human(String givenName, int givenAge, String givenGender) {
  //   name = givenName;
  //   age = givenAge;
  //   gender = givenGender;
  // }

  // 기본적으로 생성자를 만든 걸 간편하게
  // Human(String givenName, int givenAge, String givenGender)
  //  : name = givenName, age = givenAge, gender = givenGender

  // named parameter를 이용해 생성자를 만드는 방법
  Human({
    required String givenName,
    required int givenAge,
    required givenGender,
  }) {
    name = givenName;
    age = givenAge;
    gender = givenGender;
  }

  // void 사용했을 때
  // void profile() {
  //   print("안녕하세요. 제 이름은 $name 이며, $age 살 $gender 입니다.");
  // }

  //return 으로 사용했을 때
  String profile() {
    return "안녕하세요. 제 이름은 $name 이며, $age 살 $gender 입니다.";
  }
}

void main() {
  // // 기본적으로 생성자 만들었을 때(named paramter 사용하지 않았을 때)
  // var asdf = Human("짱구", 5, "남성");    //생성자에서 사용했던 이름, 나이, 성별 순으로 꼭 적어줘야 함

  // print(asdf.profile());

  // named parameter 사용했을 때    // 생성자에서 정했던 이름만 같으면 순서 상관x
  var asdf = Human(givenAge: 5, givenName: "철수", givenGender: "남성");

  print(asdf.profile());
}
