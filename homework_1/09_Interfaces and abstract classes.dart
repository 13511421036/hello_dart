import '/workspaces/hello_dart1/homework_1/05_class.dart';

abstract class MockSpaceship implements Spacecraft {
  // ···
}
abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}