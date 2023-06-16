import 'breakfast.dart';
import 'firstAid.dart';

class DailyActivity {
  bool isAwake;
  bool isSick;
  bool haveFood;
  Breakfast breakfast;
  FirstAid firstAid;

  DailyActivity(this.isAwake, this.isSick, this.haveFood)
      : breakfast = Breakfast(haveFood: haveFood),
        firstAid = FirstAid(isSick);

  void wakeUp() {
    final (s, f) = isAwake
        ? ("I am already awake", (bool f) {})
        : ("I waked up!", (bool f) => f = true);
    f(isAwake);
    print(s);
    washUp();
    feelSick();
  }

  void washUp() {
    print("Wash face");
    print("Wash Brush teeth");
  }

  void getBreakfast() {
    breakfast.makeBreakfast();
  }

  void feelSick() {
    firstAid.healing();
  }

  void fitnessTime() {
    if (isSick) {
      print("Lie on the couch and chill, listen the music, watch TV");
    } else {
      print("Exercise bike and stretching");
    }
  }

  void startWorking() {
    if (isSick) {
      getSickDays();
    } else {
      print("Working . . .");
    }
  }

  void endWorking() {
    if (!isSick) {
      print("Work day is end");
      fitnessTime();
    }
  }

  void getSickDays() {
    print("Healing and relaxing");
  }

  void startActivity() {
    washUp();
    getBreakfast();
    fitnessTime();
    startWorking();
    endWorking();
  }
}
