// Класс чернила
class Ink {
  /**
   * Inks type
   */
  static const type = "INK FOR PRINTERS";

  final String brand;

  final List<String> colors;

  int _capacity = 100; // в процентах

  /**
   * Pages amount printing resource
   */
  final int resource;

  final int volume; //ml

  Ink({
    required this.brand,
    required this.colors,
    required this.resource,
    required this.volume,
  });

  int get capacity => _capacity;

  set capacity(int percent) {
    if (percent >= 0 && percent <= 100) {
      _capacity = percent;
    } else {
      throw ArgumentError('Capacity must be between 0 and 100');
    }
  }

  @override
  String toString() {
    return "Type:$type\nBrand:$brand\nColors:$colors\nResource:$resource\nVolume$volume\n";
  }
}

void main() {
  final ink_1 = Ink(
    brand: "HP",
    colors: ['red', 'green', 'blue'],
    resource: 2000,
    volume: 131,
  );

  print(ink_1);
}
