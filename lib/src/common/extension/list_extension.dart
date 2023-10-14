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

  Map<K, List<T>> groupBy<K>(K Function(T element) keyOf) {
    var result = <K, List<T>>{};
    for (final T element in this) {
      (result[keyOf(element)] ??= []).add(element);
    }
    return result;
  }

  Iterable<R> mapIndexed<R>(R Function(int index, T element) convert) sync* {
    for (int index = 0; index < length; index++) {
      yield convert(index, this[index]);
    }
  }

  List<T> copyWith(T element) {
    return [...this, element];
  }

  List<T> insertWith(T element) {
    return [element, ...this];
  }

  List<T> copyWithAll(List<T> elements) {
    return [...this, ...elements];
  }

  void reset(List<T> elements) {
    clear();
    addAll(elements);
  }
}
