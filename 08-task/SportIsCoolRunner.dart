import 'classes/Team.dart';
import 'classes/achievement.dart';
import 'classes/athlete.dart';
import 'classes/individualSport.dart';
import 'classes/nation.dart';

void main(){
  final achievemnts1 = [
    Achievement("World champion", 1, "100 meters run"),
    Achievement("Crazy Jump", 1, "Craziest jump from Tower bridge")
  ];

  final teamMemberes = <Athlete>[
    Athlete(name: "name1", achievements: achievemnts1, nation: Nation.RUSSIAN),
    Athlete(name: "name2", achievements: achievemnts1, nation: Nation.TATAR)
  ];
  final teamAchievements = [
    Achievement("NBA Champion", 1, "Best team of season 2023"),
    Achievement("Shooting record", 1, "Most Three-Point Shots Made")
  ];
  final myTeam = Team(teamMemberes, teamAchievements);
  print(myTeam);
  print("= = = =");
  final james = Athlete(name: "James", achievements: achievemnts1, nation: Nation.CHINESE);
  final joggingSport = IndividualSport(name: "Jogging", athlete: james);

  print(joggingSport);
}