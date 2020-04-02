import 'package:rxdart/rxdart.dart';

class Searchhelper {
  factory Searchhelper() => Searchhelper._instance;
  static final Searchhelper _instance = new Searchhelper._();
  BehaviorSubject<String> _replaySubject;

  Stream<String> get stream => _replaySubject.stream;

  void search(String text) {
    _replaySubject.add(text);
  }

  void dispose() {
    _replaySubject.close(); // close our StreamController to avoid memory leak
  }

  Searchhelper._() {
    this._replaySubject = BehaviorSubject();
  }
}
