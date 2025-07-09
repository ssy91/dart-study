//키(176) 몸무게(63) 본인BMI 궁금
// ~18.4:저체중 18.5 ~22.9:정상 23.0~24.9:과체중 25.0~:비만
//[영재 bmi 점수 $score점 현재 $status 상태]
//bmi 계산 방법 : 체중 / 키(m) *키(m)

double bmi(double m, int kg) {
  double score = 0.0;
  score = kg / (m * m);

  return score;
}

void main() {
  double m = 1.76;
  int kg = 63;

  print((bmi(m, kg)));
}
