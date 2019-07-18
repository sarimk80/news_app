import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/src/model/News.dart';
import 'package:news_app/src/model/News.dart' as prefix0;

class NewsApi {
  final String baseUrl =
      "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=3209e0394c0b402cb60f1b67e490dc0a";

  final http.Client httpClient;

  NewsApi({@required this.httpClient});

  Future<News> getNews() async {
    final res = await this.httpClient.get(Uri.parse(baseUrl));

    if (res.statusCode != 200) {
      return null;
    }
    return getNewsData(res.body);
  }
}
