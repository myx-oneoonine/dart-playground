import 'dart:async';

import 'dart:io';

final int timeout = 10;
void main() {
  print(DateTime.now());
  print(DateTime.now().millisecondsSinceEpoch);
  // t1();
  // t2();
}

void t2() {
  final int startTime = DateTime.now().millisecondsSinceEpoch;

  bool condition = true;
  while (condition) {
    print("PROCESS...");
    sleep(Duration(milliseconds: 3000));

    int currntTime = DateTime.now().millisecondsSinceEpoch;
    double currntDuration = (currntTime - startTime) / 1000; // convert to sec
    print(currntDuration - timeout);
    if (currntDuration > timeout) {
      condition = false;
    }
  }
}

void t1() {
  int startTime = DateTime.now().millisecondsSinceEpoch;

  Timer.periodic(Duration(seconds: 2), (timer) async {
    // it wait before process
    print("PROCESS...");
    sleep(Duration(milliseconds: 3000));

    int currntTime = DateTime.now().millisecondsSinceEpoch;
    double currntDuration = (currntTime - startTime) / 1000;
    print(currntDuration - timeout);
    if (currntDuration > timeout) {
      timer.cancel();
    }
  });
}
