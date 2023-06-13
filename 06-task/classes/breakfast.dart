import '../util/MathUtil.dart';
import 'food.dart';
import 'menu.dart';

class Breakfast {
  static Function rb = MathUtil.grb;
  final bool haveFood;

  final breakfast = <Food>[];

  Breakfast({required this.haveFood});

  List<Food> makeBreakfast() {
    final haveEggs = rb();
    final haveMilk = rb();
    final haveBread = rb();
    final haveCoffee = rb();
    final haveTea = rb();
    final haveJuice = rb();
    final isSleepy = rb();
    if (haveFood) {
      if (haveEggs && haveMilk) breakfast.add(Food(name: Menu.OMELETTE.name));
      if (haveEggs && !haveMilk)
        breakfast.add(Food(name: Menu.FIRED_EGGS.name));
      if (!haveEggs) {
        if (haveMilk && haveBread)
          breakfast.add(Food(name: Menu.FIRED_BREAD_IN_MILK.name));
        if (haveBread && !haveMilk)
          breakfast.add(Food(name: Menu.TOASTERS.name));
      }
      if (isSleepy) {
        if (haveCoffee) breakfast.add(Food(name: Menu.COFFEE.name));
        if (!haveCoffee) if (haveTea) breakfast.add(Food(name: Menu.TEA.name));
        if (!haveCoffee && !haveTea) breakfast.add(Food(name: Menu.WATER.name));
      }

      if (!isSleepy) {
        breakfast.add(haveJuice
            ? Food(name: Menu.JUICE.name)
            : Food(name: Menu.WATER.name));
      }
    } else {
      breakfast.add(Food(name: Menu.WATER.name));
    }
    print("Breakfast today is: ${this.toString()}");
    return breakfast;
  }

  @override
  String toString() {
    return this.breakfast.join(",");
  }
}
