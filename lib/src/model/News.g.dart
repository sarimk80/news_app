// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'News.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<News> _$newsSerializer = new _$NewsSerializer();
Serializer<Articles> _$articlesSerializer = new _$ArticlesSerializer();
Serializer<Source> _$sourceSerializer = new _$SourceSerializer();

class _$NewsSerializer implements StructuredSerializer<News> {
  @override
  final Iterable<Type> types = const [News, _$News];
  @override
  final String wireName = 'News';

  @override
  Iterable<Object> serialize(Serializers serializers, News object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'totalResults',
      serializers.serialize(object.totalResults,
          specifiedType: const FullType(int)),
      'articles',
      serializers.serialize(object.articles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Articles)])),
    ];

    return result;
  }

  @override
  News deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalResults':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'articles':
          result.articles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Articles)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ArticlesSerializer implements StructuredSerializer<Articles> {
  @override
  final Iterable<Type> types = const [Articles, _$Articles];
  @override
  final String wireName = 'Articles';

  @override
  Iterable<Object> serialize(Serializers serializers, Articles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'source',
      serializers.serialize(object.source,
          specifiedType: const FullType(Source)),
    ];
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.urlToImage != null) {
      result
        ..add('urlToImage')
        ..add(serializers.serialize(object.urlToImage,
            specifiedType: const FullType(String)));
    }
    if (object.publishedAt != null) {
      result
        ..add('publishedAt')
        ..add(serializers.serialize(object.publishedAt,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Articles deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticlesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'source':
          result.source.replace(serializers.deserialize(value,
              specifiedType: const FullType(Source)) as Source);
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'urlToImage':
          result.urlToImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SourceSerializer implements StructuredSerializer<Source> {
  @override
  final Iterable<Type> types = const [Source, _$Source];
  @override
  final String wireName = 'Source';

  @override
  Iterable<Object> serialize(Serializers serializers, Source object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Source deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SourceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$News extends News {
  @override
  final String status;
  @override
  final int totalResults;
  @override
  final BuiltList<Articles> articles;

  factory _$News([void Function(NewsBuilder) updates]) =>
      (new NewsBuilder()..update(updates)).build();

  _$News._({this.status, this.totalResults, this.articles}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('News', 'status');
    }
    if (totalResults == null) {
      throw new BuiltValueNullFieldError('News', 'totalResults');
    }
    if (articles == null) {
      throw new BuiltValueNullFieldError('News', 'articles');
    }
  }

  @override
  News rebuild(void Function(NewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsBuilder toBuilder() => new NewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is News &&
        status == other.status &&
        totalResults == other.totalResults &&
        articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, status.hashCode), totalResults.hashCode),
        articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('News')
          ..add('status', status)
          ..add('totalResults', totalResults)
          ..add('articles', articles))
        .toString();
  }
}

class NewsBuilder implements Builder<News, NewsBuilder> {
  _$News _$v;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  ListBuilder<Articles> _articles;
  ListBuilder<Articles> get articles =>
      _$this._articles ??= new ListBuilder<Articles>();
  set articles(ListBuilder<Articles> articles) => _$this._articles = articles;

  NewsBuilder();

  NewsBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _totalResults = _$v.totalResults;
      _articles = _$v.articles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(News other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$News;
  }

  @override
  void update(void Function(NewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$News build() {
    _$News _$result;
    try {
      _$result = _$v ??
          new _$News._(
              status: status,
              totalResults: totalResults,
              articles: articles.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'articles';
        articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'News', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Articles extends Articles {
  @override
  final Source source;
  @override
  final String author;
  @override
  final String title;
  @override
  final String description;
  @override
  final String url;
  @override
  final String urlToImage;
  @override
  final String publishedAt;
  @override
  final String content;

  factory _$Articles([void Function(ArticlesBuilder) updates]) =>
      (new ArticlesBuilder()..update(updates)).build();

  _$Articles._(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content})
      : super._() {
    if (source == null) {
      throw new BuiltValueNullFieldError('Articles', 'source');
    }
  }

  @override
  Articles rebuild(void Function(ArticlesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticlesBuilder toBuilder() => new ArticlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Articles &&
        source == other.source &&
        author == other.author &&
        title == other.title &&
        description == other.description &&
        url == other.url &&
        urlToImage == other.urlToImage &&
        publishedAt == other.publishedAt &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, source.hashCode), author.hashCode),
                            title.hashCode),
                        description.hashCode),
                    url.hashCode),
                urlToImage.hashCode),
            publishedAt.hashCode),
        content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Articles')
          ..add('source', source)
          ..add('author', author)
          ..add('title', title)
          ..add('description', description)
          ..add('url', url)
          ..add('urlToImage', urlToImage)
          ..add('publishedAt', publishedAt)
          ..add('content', content))
        .toString();
  }
}

class ArticlesBuilder implements Builder<Articles, ArticlesBuilder> {
  _$Articles _$v;

  SourceBuilder _source;
  SourceBuilder get source => _$this._source ??= new SourceBuilder();
  set source(SourceBuilder source) => _$this._source = source;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _urlToImage;
  String get urlToImage => _$this._urlToImage;
  set urlToImage(String urlToImage) => _$this._urlToImage = urlToImage;

  String _publishedAt;
  String get publishedAt => _$this._publishedAt;
  set publishedAt(String publishedAt) => _$this._publishedAt = publishedAt;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  ArticlesBuilder();

  ArticlesBuilder get _$this {
    if (_$v != null) {
      _source = _$v.source?.toBuilder();
      _author = _$v.author;
      _title = _$v.title;
      _description = _$v.description;
      _url = _$v.url;
      _urlToImage = _$v.urlToImage;
      _publishedAt = _$v.publishedAt;
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Articles other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Articles;
  }

  @override
  void update(void Function(ArticlesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Articles build() {
    _$Articles _$result;
    try {
      _$result = _$v ??
          new _$Articles._(
              source: source.build(),
              author: author,
              title: title,
              description: description,
              url: url,
              urlToImage: urlToImage,
              publishedAt: publishedAt,
              content: content);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'source';
        source.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Articles', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Source extends Source {
  @override
  final String id;
  @override
  final String name;

  factory _$Source([void Function(SourceBuilder) updates]) =>
      (new SourceBuilder()..update(updates)).build();

  _$Source._({this.id, this.name}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Source', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Source', 'name');
    }
  }

  @override
  Source rebuild(void Function(SourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceBuilder toBuilder() => new SourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Source && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Source')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class SourceBuilder implements Builder<Source, SourceBuilder> {
  _$Source _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  SourceBuilder();

  SourceBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Source other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Source;
  }

  @override
  void update(void Function(SourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Source build() {
    final _$result = _$v ?? new _$Source._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
