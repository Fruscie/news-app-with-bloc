// bd1202b211754e90b01f8178510db9c4

class NewsModel {
  /*
{
  "status": "ok",
  "totalResults": 538,
  "articles": [
    {
      "author": "Louise Radnofsky, Stephanie Yang",
      "title": "Beijing Olympics on Course to Have Stricter Rules Than Tokyo...",
      "description": "Beijing Olympics on Course to Have Stricter Rules Than Tokyo...\r\n\n \n \n \n (Second column, 19th story, link)\r\n\n \r\n\n \r\n\n \n Related stories:Travelers continue to struggle with masking rules -- and rule-breakers ...\r\nSri Lanka shaman dies after touting 'blessed' w…",
      "url": "https://www.wsj.com/articles/beijing-olympics-covid-19-rules-11632488019",
      "urlToImage": "https://images.wsj.net/im-406032/social",
      "publishedAt": "2021-09-24T21:49:38Z",
      "content": "With just over four months to go until the 2022 Beijing Winter Olympics, the developing picture of the Games is one of severe Covid-19 restrictions for outsiders, and possible advantages for domestic… [+201 chars]"
    }
  ]
} 
*/
  final String? status;
  final int? totalResults;
  final List<Articles>? articles;
  NewsModel({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        status: json['status'],
        totalResults: json['totalResults'],
        articles: List.from(json['articles'])
            .map((e) => Articles.fromJson(e))
            .toList(),
      );
}

class Articles {
  /*
{
  "author": "Louise Radnofsky, Stephanie Yang",
  "title": "Beijing Olympics on Course to Have Stricter Rules Than Tokyo...",
  "description": "Beijing Olympics on Course to Have Stricter Rules Than Tokyo...\r\n\n \n \n \n (Second column, 19th story, link)\r\n\n \r\n\n \r\n\n \n Related stories:Travelers continue to struggle with masking rules -- and rule-breakers ...\r\nSri Lanka shaman dies after touting 'blessed' w…",
  "url": "https://www.wsj.com/articles/beijing-olympics-covid-19-rules-11632488019",
  "urlToImage": "https://images.wsj.net/im-406032/social",
  "publishedAt": "2021-09-24T21:49:38Z",
  "content": "With just over four months to go until the 2022 Beijing Winter Olympics, the developing picture of the Games is one of severe Covid-19 restrictions for outsiders, and possible advantages for domestic… [+201 chars]"
} 
*/
  Articles({
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  factory Articles.fromJson(Map<String, dynamic> json) => Articles(
        author: json['author'],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        urlToImage: json['urlToImage'],
        publishedAt: json['publishedAt'],
        content: json['content'],
      );
}
