enum TestEnum { value1, value2 }

void main(List<String> args) {
  print(TestEnum.value1);
  String stringNumber = TestEnum.value1.toString().split(".").last;
  print(stringNumber);
  print(stringNumber == "value1");

  print(TestEnum.values.contains("value21"));

var s= null;
  // print("xxxxx" + s);
s="1";
  print("xxxxx" + s);


}
