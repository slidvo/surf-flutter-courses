import 'dart:io';

import '04-task.dart';

class MapUpdater {
  static Map<A, List<B>> updateOldMap<A, B extends Territory>(
      Map<A, List<B>> oldMap, Map<A, List<B>> newMap) {
    final oldMapKeys = oldMap.keys;
    final updatedMap = newMap;
    oldMapKeys.forEach((key) {
      if (newMap[key] != null) {
        updatedMap[key] = [...?newMap[key], ...?oldMap[key]];
      } else {
        updatedMap[key] = oldMap[key]!;
      }
    });

    return updatedMap;
  }

  static void printUpdateMap(){
    updateOldMap(mapBefore2010, mapAfter2010).forEach((key, value) {
      stdout.write("${key.name} :[\n");
      value.forEach((element) {
        stdout.write("${element.areaInHectare},\n");
        stdout.write("${element.crops},\n");
        stdout.write("  [\n");
        element.machineries.forEach((element) {
          stdout.write("$element\n");
        });
        stdout.write("  ],\n");
      });
      stdout.write("]\n");
    });
  }

}

void main() {
  MapUpdater.printUpdateMap();
}
