void main() {
  double m = 1.76;
  int kg = 63;
  String status = '';
  double getSum(var m, var kg) => kg / (m * m);

  var score = getSum(m, kg);
  if (score <= 18.4) {
    status = "저체중";
  } else if (score >= 18.5 && score <= 22.9) {
    status = "정상";
  } else if (score >= 23.0 && score <= 24.9) {
    status = "과체중";
  } else if (score <= 25.0) {
    status = "비만";
  }
  print("철수의 bmi 점수는 = $score점이며, 등급은 $status 입니다.");
}
