class Organization {
  final int id;
  final String name;
  final String coverPicture;
  final String backgroundPicture;
  final int bestDiscountPercent;
  final String categoryName;
  final String instagramUrl;
  final String facebookUrl;
  final String twitterUrl;
  final dynamic cashbackPercent;
  final dynamic cashbackText;
  final String discountText;
  final String description;

  const Organization({
    this.id,
    this.name,
    this.coverPicture,
    this.backgroundPicture,
    this.bestDiscountPercent,
    this.categoryName,
    this.instagramUrl,
    this.facebookUrl,
    this.twitterUrl,
    this.cashbackPercent,
    this.cashbackText,
    this.discountText,
    this.description,
  });
}
