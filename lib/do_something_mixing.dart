mixin DoSomethingMixin {
  Future<int> doSomethingWithType(int duration, int type) async {
    Duration d = type == 1
        ? Duration(seconds: duration)
        : Duration(milliseconds: duration);

    return Future.delayed(d, () {
      print("Duration is: $duration");
      return duration;
    });
  }
}