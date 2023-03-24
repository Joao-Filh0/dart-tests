import 'package:dart_tests/news/core/domain/entities/news.dart';
import 'package:dart_tests/news/core/domain/use_cases/get_news/get_news_use_case.dart';

class NewsController {
  final GetNewsUseCase useCase;
  List<NewsEntity> news = [];

  NewsController(this.useCase);

  getNews() {
    final result = useCase();

    news = result;
  }
}
