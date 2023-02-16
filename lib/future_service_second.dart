import 'package:esercizio2/do_something_mixing.dart';

class FutureServiceSeconds with DoSomethingMixin {
  Future<int> doSomething(int duration) async {
    return doSomethingWithType(duration, 1);
  }
}