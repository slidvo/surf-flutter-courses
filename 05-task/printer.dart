// Базовый класс Printer
class Printer {
  final String brand;
  final String model;
  final PrinterType type;

  Printer({required this.brand, required this.model, required this.type});

  String get info => 'Printer type: ${type.name}\nBrand: $brand\nModel: $model\n';

  void printPage() {
    print('Printing page...');
  }
}

// Тип принтера
enum PrinterType{
  LASER,
  INK
}