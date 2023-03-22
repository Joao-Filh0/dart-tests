import 'package:dart_tests/core/data/models/car_model.dart';
import 'package:dart_tests/http_fake/http_fake.dart';

class GetCarDatasource {
  final Dio dio;

  GetCarDatasource(this.dio);

  Future<CarModel> call() async {
    try {
      final data = await dio.get('https://api/car');
      return CarModel.formMap(data);
    } catch (e) {
      return CarModel(type: '', year: '', color: '', carBrand: '', price: 0.0);
    }
  }
}
