class Genre {
  final int malId;
  final String type;
  final String name;
  final String url;
  Genre({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });
  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      malId: json['mal_id'],
      type: json['type'],
      name: json['name'],
      url: json['url'],
    );
  }
}

class AnimeImage {
  final String imageUrl;
  AnimeImage({required this.imageUrl});

  factory AnimeImage.fromJson(Map<String, dynamic> json) {
    return AnimeImage(imageUrl: json['image_url'] ?? '');
  }
}

class Image {
  final String imageUrl;
  Image({
    required this.imageUrl,
  });

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      imageUrl: json['image_url'] ?? '',
    );
  }
}
