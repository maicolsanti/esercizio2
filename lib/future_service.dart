import 'package:esercizio2/do_something_mixing.dart';

class FutureService with DoSomethingMixin {
  Future<int> doSomething(int duration) async {
    return doSomethingWithType(duration, 2);
  }
}