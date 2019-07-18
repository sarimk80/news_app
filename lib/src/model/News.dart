import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'dart:convert' as json;

import 'package:news_app/src/model/serializers.dart';

part 'News.g.dart';

abstract class News implements Built<News, NewsBuilder> {
  News._();

  static Serializer<News> get serializer => _$newsSerializer;

  factory News([void Function(NewsBuilder) updates]) = _$News;

  String get status; //": "ok",
  int get totalResults; //": 10,
  BuiltList<Articles> get articles;
}

abstract class Articles implements Built<Articles, ArticlesBuilder> {
  Articles._();

  static Serializer<Articles> get serializer => _$articlesSerializer;

  factory Articles([void Function(ArticlesBuilder) updates]) = _$Articles;

  Source get source;

// ": {
//  "id": "bbc-news",
//  "name": "BBC News"
//  },
  @nullable
  String get author; //": "BBC News",

  @nullable
  String get title; //": "Man finds own amputated leg on cigarette packets",

  @nullable
  String get description;

  @nullable
  String get url; //": "http://www.bbc.co.uk/news/world-europe-49029845",

  @nullable
  String get urlToImage;

  @nullable
  String get publishedAt; //": "2019-07-18T10:14:35Z",

  @nullable
  String get content; //":

}

abstract class Source implements Built<Source, SourceBuilder> {
  Source._();

  static Serializer<Source> get serializer => _$sourceSerializer;

  factory Source([void Function(SourceBuilder) updates]) = _$Source;

  String get id; //": "bbc-news",
  String get name; //": "BBC News"
}

News getNewsData(String jsonStr) {
  final res = json.jsonDecode(jsonStr);
  News news = standardSerializers.deserializeWith(News.serializer, res);
  return news;
}
