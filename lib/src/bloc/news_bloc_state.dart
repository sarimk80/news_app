import 'package:meta/meta.dart';
import 'package:news_app/src/model/News.dart';

@immutable
abstract class NewsBlocState {}

class InitialNewsBlocState extends NewsBlocState {}

class LoadingNewsState extends NewsBlocState {}

class LoadedNewsState extends NewsBlocState {
  final News news;

  LoadedNewsState({@required this.news}) : assert(news != null);
}

class ErrorState extends NewsBlocState {}
