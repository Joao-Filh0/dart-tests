import 'package:dart_tests/news/core/domain/entities/news.dart';

abstract class GetNewsDatasource {
  List<NewsEntity> call();
}
