import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/src/bloc/bloc.dart';
import 'package:news_app/src/model/News.dart';
import 'package:news_app/src/repository/NewsRepository.dart';
import 'package:news_app/src/service/NewsApi.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  NewsBloc newsBloc;
  NewsRepository newsRepository =
      NewsRepository(newsApi: NewsApi(httpClient: http.Client()));

  @override
  void initState() {
    newsBloc = NewsBloc(newsRepository: newsRepository);
    newsBloc.dispatch(Fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder(
        bloc: newsBloc,
        builder: (BuildContext context, NewsBlocState state) {
          if (state is LoadingNewsState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is LoadedNewsState) {
            return ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: state.news.articles.map(_builtArticles).toList(),
            );
          } else if (state is ErrorState) {
            return Center(
              child: Text("Error "),
            );
          } else {
            return Center(
              child: Text("Error "),
            );
          }
        },
      ),
    );
  }

  Widget _builtArticles(Articles e) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: 1,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Column(
            children: <Widget>[
              Image.network(e.urlToImage),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Text(
                e.description,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Text(e.author)
            ],
          ),
        );
      },
    );
  }
}
