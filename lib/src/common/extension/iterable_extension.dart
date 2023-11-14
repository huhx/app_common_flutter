extension IterableExtension<T> on Iterable<T> {
  Map<K, List<T>> groupBy<K>(K Function(T element) keyOf) {
    final result = <K, List<T>>{};
    for (final T element in this) {
      (result[keyOf(element)] ??= []).add(element);
    }
    return result;
  }

  Iterable<R> mapIndexed<R>(R Function(int index, T element) convert) sync* {
    for (int index = 0; index < length; index++) {
      yield convert(index, elementAt(index));
    }
  }
}
