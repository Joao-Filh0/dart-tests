import 'package:dart_tests/news/core/domain/entities/news.dart';
import 'package:dart_tests/news/core/domain/repositories/get_news/get_news_repository.dart';
import 'package:dart_tests/news/core/domain/use_cases/get_news/get_news_use_case.dart';

class GetNewsUseCaseImpl implements GetNewsUseCase {
  final GetNewsRepository repository;

  GetNewsUseCaseImpl(this.repository);

  @override
  List<NewsEntity> call() {
    final result = repository();

    if (result[0].stars.isEmpty) {
      return [];
    }
    return result;
  }
}
