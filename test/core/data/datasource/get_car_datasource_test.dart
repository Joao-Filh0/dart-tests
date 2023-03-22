import 'package:dart_tests/core/data/datasource/get_car_datasource.dart';
import 'package:dart_tests/http_fake/http_fake.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class DioMock extends Mock implements Dio {}

void main() {
  late Dio dio;
  late GetCarDatasource datasource;

  setUpAll(() {
    dio = DioMock();
    datasource = GetCarDatasource(dio);
  });
  group('[DATA] - GetCarDatasource', () {
    test('test method get', () async {
      when(() => dio.get(any())).thenAnswer((_) async => dataMock);
      final result = await datasource();
      expect(result.type, 'Uno');
      expect(result.year, '2012');
      expect(result.color, 'Cinza');
      expect(result.carBrand, 'Fiat');
      expect(result.price, 16000.0);
    });

    test('test Error', () async {
      when(() => dio.get(any())).thenThrow(Exception());
      final result = await datasource();
      expect(result.type, '');
      expect(result.year, '');
      expect(result.color, '');
      expect(result.carBrand, '');
      expect(result.price, 0.0);
    });
  });
}

final dataMock = {
  "type": "Uno",
  "year": "2012",
  "color": "Cinza",
  "carBrand": "Fiat",
  "price": 16000.0
};
