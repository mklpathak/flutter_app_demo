import 'package:demo/network/repository.dart';

abstract class BaseBloc {
  final repository = Repository();
  void dispose() {}
}
