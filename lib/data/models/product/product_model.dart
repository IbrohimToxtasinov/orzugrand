class OrzugrandProductModel {
  final int categoryId;
  final List<String> name;
  final String oldPrice;
  final String price;
  final String image;

  OrzugrandProductModel({
    required this.categoryId,
    required this.name,
    required this.price,
    required this.image,
    this.oldPrice = "",
  });
}
