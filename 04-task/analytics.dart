import 'mapUpdater.dart';
import '04-task.dart';

class Analytics {
  static var updatedMap = MapUpdater.updateOldMap(mapBefore2010, mapAfter2010);

  static Set<AgriculturalMachinery> getAllMachines() {
    Set<AgriculturalMachinery> machines = Set();
    for (var e in updatedMap.entries) {
      for (var t in e.value) {
        for (var m in t.machineries) {
          machines.add(m);
        }
      }
    }

    return machines;
  }

  static double getOldMachinesAvgAge() {
    final machineAges = <int>[];
    final currentDate = DateTime.now();
    final sortedList = getAllMachines().toList()
      ..sort((a, b) => a.releaseDate.compareTo(b.releaseDate));
    final fiftyPercentOldestMachines =
        sortedList.getRange(0, (sortedList.length / 2).floor());
    for (var f in fiftyPercentOldestMachines) {
      machineAges.add(currentDate.year - f.releaseDate.year);
    }

    return machineAges.reduce((value, element) => value + element) /
        fiftyPercentOldestMachines.length;
  }
}

void main() {
  print(
      " Средний возраст 50% самой старой техники : ${Analytics.getOldMachinesAvgAge()} лет");
}
