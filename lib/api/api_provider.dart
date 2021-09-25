import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/news_model.dart';

String apiNews =
    'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=bd1202b211754e90b01f8178510db9c4';

class ApiProvider {
  Future<NewsModel> getNews() async {
    try {
      final response = await http.get(Uri.parse(apiNews));
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        // print(result['status']);
        return NewsModel.fromJson(result);
      } else {
        print('error get data');
      }
    } catch (e) {
      print('error api provider $e');
    }
    return NewsModel();
  }
}
