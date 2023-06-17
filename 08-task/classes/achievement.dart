class Achievement {
  String name;
  int place;
  String description;

  Achievement(this.name, this.place, this.description);

  @override
  String toString() {

    return 'Achievement{name: $name, place: $place, description: $description}\n';
  }
}

void main(){
  print(Achievement("NBA Champion", 1, "Best team of season 2023"));
}