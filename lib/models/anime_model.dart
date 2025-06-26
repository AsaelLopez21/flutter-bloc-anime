import 'package:bloc_cubit/models/anime_content.dart';

class Datum {
  final int malId;
  final String title;
  final Map<String, AnimeImage> images;
  final List<Genre> genres;
  final double score;
  final int? episodes;
  final String synopsis;

  Datum({
    required this.malId,
    required this.title,
    required this.images,
    required this.genres,
    required this.score,
    this.episodes,
    required this.synopsis,
  });

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      malId: json['mal_id'],
      title: json['title'] ?? '',
      images: (json['images'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(key, AnimeImage.fromJson(value)),
      ),
      genres:
          (json['genres'] as List).map((item) => Genre.fromJson(item)).toList(),
      score: (json['score'] != null) ? (json['score'] as num).toDouble() : 0.0,
      episodes: json['episodes'],
      synopsis: json['synopsis'] ?? '',
    );
  }
}
