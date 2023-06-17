enum Nation {
  RUSSIAN("Русский"),
  CHINESE("Китаец"),
  TATAR("Татарин"),
  MONGOL("Монгол"),
  OTHER("Другое");

  final String _name;

  const Nation(name) : _name = name;

  String get name => this._name;
}
