import 'package:dart_tests/core/data/models/car_model.dart';
import 'package:test/test.dart';

//1 - Passar os parametros pelo contrutor
//2 - Testar o fromMap retornar a instancia da classe
//1 -  Testar se o toMap esta retornando os valores de acordo ao contrato copm back

void main() {
  group('[DATA] - CarModel tests', () {
    test('Args Constructor', () {
      final car = CarModel(
          type: 'Gol',
          year: '2012',
          color: 'Branco',
          carBrand: 'Volkswagen',
          price: 30000.00);

      expect(car.type, 'Gol');
      expect(car.year, '2012');
      expect(car.color, 'Branco');
      expect(car.carBrand, 'Volkswagen');
      expect(car.price, 30000.00);
    });

    test('toMap', () {
      final car = CarModel(
          type: 'Gol',
          year: '2012',
          color: 'Branco',
          carBrand: 'Volkswagen',
          price: 30000.00);

      final toMap = car.toMap();

      expect(toMap["type"], 'Gol');
      expect(toMap["year"], '2012');
      expect(toMap["color"], 'Branco');
      expect(toMap["carBrand"], 'Volkswagen');
      expect(toMap["price"], 30000.00);
    });
  });
}
