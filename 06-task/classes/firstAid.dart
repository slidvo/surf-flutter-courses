import 'dart:math';
import 'celsium.dart';

class FirstAid {
  bool isSick;

  FirstAid(this.isSick);

  void healing() {
    if (isSick){
      var celsium = _getBodyTemperature();
      if (celsium.temperature < 37) {
        print("So far, nothing to worry about");
      }

      if (celsium.temperature >= 38) {
        print("drinking coldrex");
      }
      return;
    }
    print("Healthy");
  }

  Celsium _getBodyTemperature() {
    return Celsium(36 + Random().nextInt(40 - 36));
  }
}
