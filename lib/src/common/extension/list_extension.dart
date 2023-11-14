extension ListExtension<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;

  T? get lastOrNull => isEmpty ? null : last;

  bool containsAny(List<T> values) {
    return values.any((element) => contains(element));
  }

  bool containsAll(List<T> values) {
    return values.every((element) => contains(element));
  }

  bool containsNone(List<T> values) {
    return values.every((element) => !contains(element));
  }

  List<T> addOrRemove(T value) {
    if (contains(value)) {
      remove(value);
    } else {
      add(value);
    }
    return this;
  }

  @Deprecated("use ... instead")
  List<T> copyWith(T element) {
    return [...this, element];
  }

  @Deprecated("use ... instead")
  List<T> insertWith(T element) {
    return [element, ...this];
  }

  @Deprecated("use ... instead")
  List<T> copyWithAll(List<T> elements) {
    return [...this, ...elements];
  }

  @Deprecated("use ... instead")
  void reset(List<T> elements) {
    clear();
    addAll(elements);
  }
}
