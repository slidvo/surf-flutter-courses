import 'nation.dart';

class Human {
  Nation nation;

  Human({required this.nation});

  @override
  String toString() {
    return 'nation: ${nation.name}\n';
  }
}
