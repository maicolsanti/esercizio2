
Future<int> doSomething(int duration) async {
  return Future.delayed(Duration(milliseconds: 20000), () {
    print("Duration is: $duration");
    return 2;
  });
}

void main(List<String> arguments) async {
  // int res = await doSomething();
  // int res1 = await doSomething();

  // FutureService f = FutureService()

  // List<int> data = await Future.wait<int>([
  //   FutureService.doSomething(5000),
  //   FutureService.doSomething(5000),
  //   FutureService.doSomething(5000)
  // ]);
}
