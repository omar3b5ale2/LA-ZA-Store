class ProductsModel {
  String name;
  String image;
  bool isFavorite;
  bool isOutOfStock;
  double price;
  String subdescription;

  ProductsModel(this.name, this.image, this.isFavorite, this.isOutOfStock,
      this.price, this.subdescription);
  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      json['name'] as String,
      json['image'] as String,
      json['isFavorite'] as bool,
      json['isOutOfStock'] as bool,
      json['price'] as double,
      json['subdescription'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'isFavorite': isFavorite,
      'isOutOfStock': isOutOfStock,
      'price': price,
      'subdescription': subdescription,
    };
  }

  // Update other methods accordingly...

  List<Object> get products => [
        {
          'id': 1,
          'title': name,
          'image': image,
          'isFavorite': isFavorite,
          'isOutOfStock': isOutOfStock,
          'price': price,
          'description': subdescription,
        },
      ];
}
