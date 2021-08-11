class Products {
  final String name;
  final String photo;
  final String description;
  final String price;
  final String installments;
  bool isFavorite;

  Products({
    required this.name,
    required this.photo,
    required this.description,
    required this.price,
    required this.installments,
    this.isFavorite = false,
  });
}