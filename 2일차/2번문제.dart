void main() {
  double m = 1.76;
  int kg = 63;
String status = '';
  double getSum(var m, var kg) => kg / (m * m);

  var score = getSum(m,kg);
  if(score >= 18.4) {
    status = "과체중";
  } else if (score <= 18.5 &&score <= 22.9) {
    status = "정상";
}
