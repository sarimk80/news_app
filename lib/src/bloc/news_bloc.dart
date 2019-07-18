import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app/src/model/News.dart';
import 'package:news_app/src/repository/NewsRepository.dart';
import './bloc.dart';

class NewsBloc extends Bloc<NewsBlocEvent, NewsBlocState> {
  NewsRepository newsRepository;

  NewsBloc({@required this.newsRepository}) : assert(newsRepository != null);

  @override
  NewsBlocState get initialState => InitialNewsBlocState();

  @override
  Stream<NewsBlocState> mapEventToState(NewsBlocEvent event) async* {
    if (event is Fetch) {
      yield LoadingNewsState();

      try {
        final News news = await newsRepository.getNewsRepo();
        yield LoadedNewsState(news: news);
      } catch (_) {
        yield ErrorState();
      }
    }
  }
}
