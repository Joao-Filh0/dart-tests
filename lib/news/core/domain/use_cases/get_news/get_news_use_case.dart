import 'package:dart_tests/news/core/domain/entities/news.dart';

abstract class GetNewsUseCase {
  List<NewsEntity> call();
}
