import 'dart:math';

main() {
  print("messing with your head ");

  void dog() {
    print("this is good");
  }

  dog();

  var name = 'year';

  var year = 2031;

  // var satu = cat();

  int fib(int n) {
    if (n == 0 || n == 1) return n;
    return fib(n - 1) + fib(n - 1);
  }

  int b = fib(2);

  print(b);
  print(b);
}

class Animal {
  var ini = "this ";

  canSpeak() {}

  canTouch() {}
}
