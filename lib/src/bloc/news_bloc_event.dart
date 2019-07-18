import 'package:meta/meta.dart';

@immutable
abstract class NewsBlocEvent {}

class Fetch extends NewsBlocEvent {}
