// 문자열 "가" ~ "사" 를 포함한 Set 를 하나 생성하고
// "라" ~ "하" 를 포함한 Set 를 생성한 뒤,
// 두 세트를 합친 새로운 세트를 변수에 담아 출력해보자.

void main() {
  Set set1 = {"가", "나", "다", "라", "마", "바", "사"};
  Set set2 = {"라", "마", "바", "사", "아", "자", "차", "카", "타", "파", "하"};
  // set1.addAll(set2);

  // print(set1);

  // 심화과정 - 두 개의 세트에서 교집합, 합집합, 차집합을 새로운 세트들로 출력해보자
  Set set4 = set1.intersection(set2); //교집합
  print(set4);
  Set set5 = set1.difference(set2); //차집합
  print(set5);
  Set set6 = set1.union(set2); //합집합
  print(set6);
}
