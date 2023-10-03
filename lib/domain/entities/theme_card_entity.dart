class ThemeCardEntity {
  final String imageUrl;
  final String title;
  final String category;

  ThemeCardEntity({
    this.category = "gaming",
    required this.imageUrl,
    required this.title,
  });
}
