import 'SomeModel.dart';

void main() async {
  SomeModel xx = SomeModel(
    attr1: 1,
    attr2: {
      "a": 1,
      "b": 2,
    },
  );
  // xx.attr1 = "1";
  // xx.attr2 = "2";

  print(xx.attr1);
  print(xx.attr2);
}
