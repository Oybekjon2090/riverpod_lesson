class CountState {
  int count;
  String name;

  CountState({this.count = 0, this.name = ""});
  CountState copyWith({int? count, String? name}) {
    return CountState(count: count ?? this.count, name: name ?? this.name);
  }
}
