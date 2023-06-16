import 'dart:async';

class Phone {
  // Объявление полей класса
  String brand;
  String model;
  int year;

  // Приватное поле для уровня заряда батареи
  int _batteryLevel = 0;

  // Конструктор класса
  Phone(
      {required this.brand,
      required this.model,
      required this.year,
      required int batteryLevel});

  // Геттер для уровня заряда батареи
  int get batteryLevel => _batteryLevel;

  // Сеттер для уровня заряда батареи
  set batteryLevel(int level) {
    if (level >= 0 && level <= 100) {
      _batteryLevel = level;
    } else {
      throw ArgumentError('Battery level must be between 0 and 100');
    }
  }

  // Метод для увеличения заряда батареи
  void chargePhone() {
    Timer.periodic(Duration(seconds: 10), (Timer t) {
      if (_batteryLevel < 100) {
        _batteryLevel += 5;
        if (_batteryLevel > 100) _batteryLevel = 100;
        print('Battery level increased to $_batteryLevel%');
      } else {
        _stopCharging(t);
      }
    });
  }

  // Метод для остановки зарядки батареи
  void _stopCharging(Timer t) {
    t.cancel();
  }

  // Метод для звонка
  void call(String phoneNumber) {
    print('Calling $phoneNumber...');
    // Звонок снижает уровень заряда батареи
    _batteryLevel -= 10;
  }

  // Метод для отправки сообщения
  void sendSMS(String phoneNumber, String message) {
    print('Sending SMS to $phoneNumber with message: $message');
    // Отправка сообщения снижает уровень заряда батареи
    _batteryLevel -= 5;
  }

  // Метод для получения информации о телефоне
  String getInfo() {
    return 'Phone: $brand $model, $year. Battery level: $_batteryLevel%';
  }
}

void main() {
  // Создание объекта Phone
  var myPhone = Phone(brand: 'Apple', model: 'iPhone 12', year: 2020, batteryLevel: 40);

  // Вызов методов
  myPhone.call('1234567890');
  myPhone.sendSMS('1234567890', 'Hello, Dart!');
  print(myPhone.getInfo());

  // Использование сеттера
  myPhone.batteryLevel = 50;
  print('New battery level: ${myPhone.batteryLevel}%');

  myPhone.chargePhone();
}
