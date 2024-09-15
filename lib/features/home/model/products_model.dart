
class ProductsModel{
  final String name;
  final double price;



  ProductsModel({required this.name, required this.price});

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
  return ProductsModel(
  name: json['name'] ?? '',
  price: json['price']?.toDouble() ?? 0.0,
  );
  }

  Map<String, dynamic> toMap() {
  return {
  'name': name,
  'price': price,
  };
  }

  // Update other methods accordingly...

  List<Object> get products => [];
}
