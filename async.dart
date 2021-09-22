void main() {
  // a('1');
  // b('2');
  x('1');
  x('2');
  x('3');
  zz('4').then((value) {
    x('5');
    x('6');
    x('7');
    x('8');
  });
}

Future<void> zz(x) async {
  await Future.delayed(Duration(seconds: 5)); // new thread

  // Future(() {
  //   var xx = 0;
  //   while (xx < 9999999999) {
  //     xx++;
  //   }
  // });

  print(x);
}

void x(x) {
  print(x);
}

Future<void> y(x) async {
  await Future.delayed(Duration(seconds: 5)); // new thread
  print(x);
}

void z(x) {
  Future.delayed(Duration(seconds: 5)); // new thread

  var xx = 0;
  while (xx < 9999999999) {
    xx++;
  }

  print(x);
}

void a(x) {
  print(x);
}

void b(x) async {
  await Future.delayed(Duration(seconds: 5)); // new thread
  print(x);
}
