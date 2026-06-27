class LocalDataSource {
  int _counter = 0;

  Future<int> getCounter() async {
    return _counter;
  }

  Future<void> incrementCounter() async {
    _counter++;
  }
}
