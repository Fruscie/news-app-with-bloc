import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({Key? key, required this.articles}) : super(key: key);

  final Articles articles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.network(articles.urlToImage.toString()),
              const SizedBox(
                height: 10,
              ),
              Text(
                articles.title.toString(),
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                    fontSize: 30),
              ),
              const Divider(
                thickness: 3,
              ),
              Text(
                articles.content.toString(),
                softWrap: true,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ));
  }
}
