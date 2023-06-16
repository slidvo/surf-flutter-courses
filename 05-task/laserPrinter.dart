import 'printer.dart';
import 'toner.dart';

// Класс LaserPrinter, наследуется от Printer
class LaserPrinter extends Printer {
  final Toner toner;

  LaserPrinter({
    required String brand,
    required String model,
    PrinterType? type,
    required Toner toner,
  })  : toner = toner,
        super(brand: brand, model: model, type: type ?? PrinterType.LASER);

  set tonerLevel(int level) {
    if (level >= 0 && level <= 100) {
      toner.capacity = level;
    } else {
      throw ArgumentError('Toner level must be between 0 and 100');
    }
  }

  @override
  void printPage() {
    if (toner.capacity > 0) {
      print('Printing page with laser printer...');
      toner.capacity -= 10;
    } else {
      print('Toner is empty');
    }
  }
}

void main() {
  final t = Toner.withArgs(brand: "HP", model: "FFKE423ARU", capacity: 42);
  var laserPrinter = LaserPrinter(brand: 'HP', model: 'LaserJet Pro', toner: t);
  print(laserPrinter.info);
  laserPrinter.printPage();
  print('Toner level: ${laserPrinter.toner.capacity}%');
}
