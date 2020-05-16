import '_06_Classes.dart';
// Dart 中类是单继承
class Orbiter extends Spacecraft {
  num altitude;

  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}
