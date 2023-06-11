// Тонер для принтера
class Toner {
  static const _thanks = "Thank you for using our products and trusting us.";
  late final String brand;
  late final String model;
  int _capacity = 0; // в процентах

  Toner() {
    this.brand = "DEF";
    this.model = "DEF_MOD";
    capacity = 100;
  }

  Toner.withArgs({required this.brand, required this.model, int? capacity})
      : _capacity = capacity ?? 100;

  int get capacity => _capacity;

  set capacity(int percent) {
    if (percent >= 0 && percent <= 100) {
      _capacity = percent;
    } else {
      throw ArgumentError('Capacity must be between 0 and 100');
    }
  }

  // Метод для вывода информации о тонере
  void printInfo() {
    print('Toner brand: $brand');
    print('Toner model: $model');
    print('Toner capacity: $_capacity%');
  }

  void printThanks(String? text) {
    if (text == null){
      print(_thanks);
      return;
    };
    print("$text\n$_thanks");
  }

  // Метод для заправки тонера
  void refill() {
    _capacity = 100;
    print('The toner has been refilled.');
  }
}

void main() {
  var toner = Toner();

  toner.printInfo();

  toner.capacity -= 30;
  toner.printInfo();

  toner.refill();
  toner.printInfo();

  String? text;
  toner.printThanks(text);
  print("= = = = ");
  toner.printThanks("We believe that do World better");

}
