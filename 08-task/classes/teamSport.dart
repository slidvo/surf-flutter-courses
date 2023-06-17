import 'Team.dart';
import 'sport.dart';

class TeamSport extends Sport {
  int playersAmount;
  Team team;

  TeamSport(String name, this.playersAmount, this.team) : super(name: name);
}
