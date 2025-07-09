void main() {
  print("[step1] Map creation");
  Map fruit = {"A001": "Apple", "A002": "Mango"};
  var empty = <dynamic, dynamic>{};

  fruit["A001"] = "오렌지";
  empty[""] = "3";
  print("fruit is $fruit");

  print("empty is $empty");
}
