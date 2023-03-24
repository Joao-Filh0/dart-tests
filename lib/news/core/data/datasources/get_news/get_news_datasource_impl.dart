import 'package:dart_tests/news/core/data/datasources/get_news/get_news_datasorce.dart';
import 'package:dart_tests/news/core/data/models/news_model/news_model.dart';
import 'package:dart_tests/news/core/domain/entities/news.dart';

class GetNewsDatasourceImpl implements GetNewsDatasource {
  @override
  List<NewsEntity> call() {
    final result = dataMock;
    return result.map((map) => NewsModel.fromMap(map)).toList();
  }
}

final dataMock = [
  {
    'title': 'Lula vendeu o Brasil',
    'description': 'será que o povo aprova',
    'stars': '3',
  }
];
