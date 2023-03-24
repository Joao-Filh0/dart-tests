import 'package:dart_tests/news/core/data/datasources/get_news/get_news_datasorce.dart';
import 'package:dart_tests/news/core/domain/entities/news.dart';
import 'package:dart_tests/news/core/domain/repositories/get_news/get_news_repository.dart';

class GetNewsRepositoryImpl implements GetNewsRepository {
  final GetNewsDatasource datasource;

  GetNewsRepositoryImpl(this.datasource);

  @override
  List<NewsEntity> call() {
    return datasource();
  }
}
