import 'achievement.dart';
import 'athlete.dart';

class Team {
  List<Athlete> members;

  List<Achievement> teamAchievements;

  Team(this.members, this.teamAchievements);

  @override
  String toString() {
    return "Team ahievements:${teamAchievements}\nTeam members:${members.join("\n")}";
  }
}