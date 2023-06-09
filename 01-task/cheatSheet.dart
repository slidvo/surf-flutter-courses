void main() {
  // MyClass.basicsExample();
  // MyClass.nullAwareExample(null);
  MyClass.conditionalPropertyAccess();
}

class MyClass {
  late String className;
  int? a1;
  late int b;
  final List<int> _values = [];

  void addValue(int v) {
    _values.add(v);
  }

  int get count => _values.length;

  int _aProp1 = 0;

  int get aProp1 => _aProp1;

  set aProp1(int v) {
    if (v >= 0) {
      _aProp1 = v;
    } else {
      _aProp1 = 0;
    }
  }

  MyClass(String className) {
    this.className = className;
  }

  static void basicsExample() {
    print('\'\${3+2}\' = ${3 + 2}');
    print("\'word\'.toUpperCase() = ${'word'.toUpperCase()}");
    print(new MyClass("MyFirstDatObject")..b = 42);
  }

  static void nullAwareExample(MyClass? myClass) {
    MyClass? a;
    myClass ??= new MyClass("InitClass")..b = 3;
    print('a = $a');
    a ??= new MyClass("InitClass2")..b = 5;
    print('a=$a');
  }

  static void conditionalPropertyAccess() {
    MyClass? myObj = null;
    print('myObj?.a1 : ${myObj?.a1}');
  }

  static void arrowSyntax() {
    // => arrow
    final aListOfStrings = ['one', 'two', 'three'];
    bool hasEmpty = aListOfStrings.any((e) => e.isEmpty);
  }

  @override
  String toString() {
    return 'type: MyClass\nclassName=${this.className}\nb=$b';
  }
}
