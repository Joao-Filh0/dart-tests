import 'package:dart_tests/news/core/data/datasources/get_news/get_news_datasorce.dart';
import 'package:dart_tests/news/core/data/datasources/get_news/get_news_datasource_impl.dart';
import 'package:dart_tests/news/core/data/repositories/get_news/get_news_repository_impl.dart';
import 'package:dart_tests/news/core/domain/repositories/get_news/get_news_repository.dart';
import 'package:dart_tests/news/core/domain/use_cases/get_news/get_news_use_case.dart';
import 'package:dart_tests/news/core/domain/use_cases/get_news/get_news_use_case_impl.dart';
import 'package:dart_tests/news/ui/controllers/news_controller/news_controller.dart';

void main() {
  final GetNewsDatasource datasource = GetNewsDatasourceImpl();
  final GetNewsRepository repository = GetNewsRepositoryImpl(datasource);
  final GetNewsUseCase useCase = GetNewsUseCaseImpl(repository);
  final NewsController controller = NewsController(useCase);
  controller.getNews();
  for (var element in controller.news) {
    print(element.title);
    print(element.description);
    print(element.stars);
  }
}
