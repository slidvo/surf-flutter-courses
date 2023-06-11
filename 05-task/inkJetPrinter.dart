import 'ink.dart';
import 'printer.dart';
import 'dart:async';

// Класс InkjetPrinter, наследуется от Printer
class InkjetPrinter extends Printer {
  final Ink ink;

  InkjetPrinter(
      {required String brand,
      required String model,
      PrinterType? type,
      required Ink ink})
      : ink = ink,
        super(brand: brand, model: model, type: type ?? PrinterType.INK);

  set inkLevel(int level) {
    if (level >= 0 && level <= 100) {
      ink.capacity = level;
    } else {
      throw ArgumentError('Ink level must be between 0 and 100');
    }
  }

  @override
  void printPage() {
    if (ink.capacity > 0) {
      print('Printing page with inkjet printer...');
      ink.capacity -= 10;
    } else {
      print(
          'Cartridge is empty. Please buy a new one. Use only original cartridges');
    }
  }

  void printPages(String userName, int pagesCount) {
    int count = 1;
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (count > pagesCount) {
        timer.cancel();
        return;
      }
      if (ink.capacity > 0) {
        print(
            '$userName: Printing page with inkjet printer... $count/$pagesCount');
        ink.capacity -= 10;
      } else {
        print(
            'Cartridge is empty. Please buy a new one. Use only original cartridges');
        timer.cancel();
      }
      count++;
    });
  }
}

void main() {
  final ink = Ink(
    brand: "HP",
    colors: ['red', 'green', 'blue'],
    resource: 2000,
    volume: 131,
  );
  var inkjetPrinter =
      InkjetPrinter(brand: 'Canon', model: 'Pixma MG2522', ink: ink);
  print(inkjetPrinter.info);
  inkjetPrinter.printPages("Kyle", 3);
  inkjetPrinter.printPages("Kevin", 11);
}
