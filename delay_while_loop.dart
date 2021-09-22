void main() async {
  int a = 1;
  while (a < 10) {
    print(a);
    someProcess();
    // await sleep();
    await Future.delayed(Duration(seconds: 10));
    a++;
    if (a == 5) {
      return;
    }
  }
}

Future sleep() {
  print("delay...");
  return Future.delayed(Duration(seconds: 10));
}

void someProcess() {
  var xx = 0;

  while (xx < 1999999999) {
    xx++;
  }
  print("DONE");
}
