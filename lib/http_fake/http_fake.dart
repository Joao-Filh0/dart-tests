class Dio {
  Future<Map<String, dynamic>> get(String url) async {
    print('Call => HttpFake');
    final data = {
      "type": "Gol",
      "year": "2012",
      "color": "Branco",
      "carBrand": "Volkswagen",
      "price": 30000.0
    };
    return await Future.value(data);
  }
}
