import 'package:flutter/cupertino.dart';
import 'package:news_app/src/model/News.dart';
import 'package:news_app/src/service/NewsApi.dart';

class NewsRepository {
  NewsApi newsApi;

  NewsRepository({@required this.newsApi}) : assert(NewsApi != null);

  Future<News> getNewsRepo() async {
    return await newsApi.getNews();
  }
}
