void main() {
  int score = 70;
  String grade = '';

  if (score <= 100 && score >= 91) {
    grade = "A";
  } else if (score <= 90 && score >= 81) {
    grade = "B";
  } else if (score <= 80 && score >= 71) {
    grade = "C";
  } else if (score <= 70 && score >= 61) {
    grade = "D";
  } else if (score <= 60 && score >= 51) {
    grade = "E";
  } else if (score <= 50) {
    grade = "F";
  }
  print("철수의 시험 점수는 = $score점이며, 등급은 $grade 입니다.");
}
