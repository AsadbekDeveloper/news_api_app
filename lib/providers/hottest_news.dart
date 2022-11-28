import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:news_api/providers/article_model.dart';
import 'package:http/http.dart' as http;

class Hottest extends ChangeNotifier {
  List<Article> _hottest = [];
  bool isLoading = false;
  List<Article> get hottest => _hottest;
  Article byIndex(index) => _hottest[index];
  Future initializeHottest() async {
    // final url = Uri(
    //   scheme: 'https',
    //   host: 'newsapi.org',
    //   path: '/v2/top-headlines',
    //   query: 'country=us&apiKey=6415c16a67714c09a8cbfc193a8fe7ae',
    // );
    final url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=6415c16a67714c09a8cbfc193a8fe7ae',
    );
    try {
      isLoading = true;
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final articles = jsonDecode(response.body)['articles'] as List;
        for (Map<String, dynamic> article in articles) {
          _hottest.add(
            Article.fromJson(article),
          );
        }
      }
      isLoading = false;
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }
}
