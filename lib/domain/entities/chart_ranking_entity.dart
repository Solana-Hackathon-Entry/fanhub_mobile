class ChartRankingEntity {
  String name;
  String subText;
  int chartType;
  bool isEntered;
  String imageUri;

  ChartRankingEntity({
    required this.name,
    required this.subText,
    required this.chartType,
    this.isEntered = false,
    this.imageUri = "assets/images/nft.jpg",
  });
}
