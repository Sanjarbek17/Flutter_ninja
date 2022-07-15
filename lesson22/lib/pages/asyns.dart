void main() {
  getData();
  // ignore: avoid_print
  print('ikkinchi');
  int a = 10000;
  int x = 0;
  while (x <= a) {
    // ignore: avoid_print
    print(x);
    x++;
  }
}

void getData() async {
  await Future.delayed(const Duration(seconds: 3), (() {
    // ignore: avoid_print
    print('hello');
  }));
  // ignore: avoid_print
  print('await');
  // print("data");
}
