import 'achievement.dart';
import 'human.dart';
import 'nation.dart';

class Athlete extends Human {
  String name;
  List<Achievement> achievements;

  Athlete(
      {required this.name, required this.achievements, required super.nation});

  @override
  String toString() {
    return "Athlete name: $name\n${super.toString()}athlete achievements:\n${achievements}";
  }
}

void main() {
  final achievemnts1 = [
    Achievement("World champion", 1, "100 meters run"),
    Achievement("Crazy Jump", 1, "Craziest jump from Tower bridge")
  ];
  final athlete1 = Athlete(
      name: "Athanasius", achievements: achievemnts1, nation: Nation.RUSSIAN);
  print(athlete1);
}
