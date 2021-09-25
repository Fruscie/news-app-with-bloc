import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:news_app/bloc/news_bloc.dart';
import 'package:news_app/pages/news_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<NewsBloc>().add(const GetNews());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal[50],
      body: SafeArea(child: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          if (state is NewsLoaded) {
            final articleList = state.newsModel.articles;

            return ListView.builder(
              itemCount: articleList?.length,
              itemBuilder: (context, index) {
                final articles = articleList![index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsDetail(articles: articles)),
                    );
                  },
                  child: ListTile(
                    minLeadingWidth: 120.0,
                    minVerticalPadding: 15,
                    leading: Image.network(
                      articles.urlToImage.toString(),
                      fit: BoxFit.fill,
                      height: 200,
                      width: 120.0,
                    ),
                    title: Text(articles.title.toString()),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      )),
    );
  }
}
