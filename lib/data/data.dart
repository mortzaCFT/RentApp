class HouseModel {
  final String id;
  final String name;
  final String imageUrl;
  final int bedrooms;
  final int bathrooms;
  final double price;
  final String location;

  HouseModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.bedrooms,
    required this.bathrooms,
    required this.price,
    required this.location
  });
}