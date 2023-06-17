class Sport {
  String name;

  Sport({required this.name});

  void play(){
    print("$name started");
  }
  void end(){
    print("$name is over");
  }

  @override
  String toString() {
    return 'name: $name\n';
  }
}