void main(List<String> arguments) {
  if (arguments.length < 2) {
    print('Количество обязательных параметров 2, найдено ${arguments.length}');
    return;
  }
  final os = arguments[0];
  final buildType = arguments[1];

  if (os != 'ios' && os != 'android') {
    print(
        'Не удалось выполнить операцию - не удалось распознать ОС $os. Параметр может принимать только значения `android` или `ios`');
    return;
  }

  if (buildType != 'qa' && buildType != 'release') {
    print(
        'Не удалось выполнить операцию - не удалось распознать тип сборки $buildType. Параметр может принимать только значения `qa` или `release`');
    return;
  }

  /// Если все ок, собираем сборку тут
  /// (на самом деле, не собираем. Собирать сборку мы научимся позднее 🥴)
  print('Сборка собрана!');
}
