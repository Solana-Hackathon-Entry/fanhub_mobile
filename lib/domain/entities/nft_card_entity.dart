class NFTCardEntity {
  final String name;
  final String imageUrl;
  final double favoriteNumber;

  NFTCardEntity({
    required this.name,
    required this.imageUrl,
    required this.favoriteNumber,
  });
}

class IdolCardEntity1 {
  final String name;
  final String imageUrl;
  final double favoriteNumber;
  final int heart;

  IdolCardEntity1({
    required this.name,
    required this.imageUrl,
    required this.favoriteNumber,
    required this.heart,
  });
}

class DiscoverMoreEntity {
  final String name;
  final String subName;
  final String imageUrl;
  final String price;
  final String highestBid;
  final int favoriteNumber;

  DiscoverMoreEntity({
    required this.name,
    required this.subName,
    required this.imageUrl,
    required this.price,
    required this.highestBid,
    required this.favoriteNumber,
  });
}
