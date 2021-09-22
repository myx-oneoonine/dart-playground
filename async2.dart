import 'dart:isolate';

void main() {
  task(1000, taskName: "1");
  task(1000, taskName: "2");
}

Future<void> task(int r, {String taskName = ""}) async {
  while (r > 0) {
    print("$taskName: $r");
    r--;
  }
}
