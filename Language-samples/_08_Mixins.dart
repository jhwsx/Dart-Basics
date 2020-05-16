import '_06_Classes.dart';
// Mixins are a way of reusing code in multiple class hierarchies.
class Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
// To add a mixin’s capabilities to a class, just extend the class with the mixin.
class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name, DateTime launchDate) : super(name, launchDate);
}

// PilotedCraft now has the astronauts field as well as the describeCrew() method.
void main() {
  var pilotedCraft = new PilotedCraft('Amstrong', DateTime(1997, 9, 5));
  print(pilotedCraft.astronauts);
  pilotedCraft.describeCrew();
}
