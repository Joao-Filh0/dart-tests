class CarModel {
  final String type;
  final String year;
  final String color;
  final String carBrand;
  final double price;

  CarModel(
      {required this.type,
      required this.year,
      required this.color,
      required this.carBrand,
      required this.price});

  factory CarModel.formMap(Map<String, dynamic> map) {
    return CarModel(
      type: map['type'],
      year: map['year'],
      color: map['color'],
      carBrand: map['carBrand'],
      price: map['price'],
    );
  }

  Map<String, dynamic> toMap() => {
        "type": type,
        "year": year,
        "color": color,
        "carBrand": carBrand,
        "price": price
      };
}
