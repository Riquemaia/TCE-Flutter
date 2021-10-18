class ServicePathException<T> implements Exception {
  final T data;

  ServicePathException(this.data);
  @override
  String toString() {
    return 'Nao foi possivel enccontrar o enum:';
  }
}
