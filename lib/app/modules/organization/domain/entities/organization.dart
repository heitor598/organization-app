class Organization {
  int id;
  String name;
  String coverPicture;
  String backgroundPicture;
  int bestDiscountPercent;
  String categoryName;
  String instagramUrl;
  String facebookUrl;
  String twitterUrl;
  dynamic cashbackPercent;
  dynamic cashbackText;
  String discountText;
  String description;

  Organization({
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

  factory Organization.fromJson(Map<String, dynamic> json) => Organization(
        id: json["id"],
        name: json["name"],
        coverPicture: json["cover_picture"],
        backgroundPicture: json["background_picture"],
        bestDiscountPercent: json["best_discount_percent"],
        categoryName: json["category_name"],
        instagramUrl: json["instagram_url"],
        facebookUrl: json["facebook_url"],
        twitterUrl: json["twitter_url"],
        cashbackPercent: json["cashback_percent"],
        cashbackText: json["cashback_text"],
        discountText: json["discount_text"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "cover_picture": coverPicture,
        "background_picture": backgroundPicture,
        "best_discount_percent": bestDiscountPercent,
        "category_name": categoryName,
        "instagram_url": instagramUrl,
        "facebook_url": facebookUrl,
        "twitter_url": twitterUrl,
        "cashback_percent": cashbackPercent,
        "cashback_text": cashbackText,
        "discount_text": discountText,
        "description": description,
      };
}
