import 'athlete.dart';
import 'sport.dart';

class IndividualSport extends Sport {
  Athlete athlete;

  IndividualSport({
    required String name,
    required Athlete athlete,
  })  : athlete = athlete,
        super(name: name);

  @override
  String toString() {
    return 'IndividualSport{${super.toString()}$athlete}\n';
  }
}