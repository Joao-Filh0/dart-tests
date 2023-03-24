import 'package:dart_tests/news/core/domain/entities/news.dart';

class NewsModel extends NewsEntity {
  NewsModel({
    required super.title,
    required super.description,
    required super.stars,
  });

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      title: map['title'],
      description: map['description'],
      stars: map['stars'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'stars': stars,
    };
  }
}
