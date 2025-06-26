import 'package:bloc_cubit/models/anime_model.dart';

class AnimeResponse {
  final Pagination pagination;
  final List<Datum> data;

  AnimeResponse({required this.pagination, required this.data});
  factory AnimeResponse.fromJson(Map<String, dynamic> json) {
    return AnimeResponse(
      pagination: Pagination.fromJson(json['pagination']),
      data: (json['data'] as List).map((item) => Datum.fromJson(item)).toList(),
    );
  }
}

class Genre {
  final String name;
  Genre({required this.name});

  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(name: json['name']);
  }
}

class Pagination {
  final int lastVisiblePage;
  final bool hasNextPage;
  final int currentPage;

  Pagination({
    required this.lastVisiblePage,
    required this.hasNextPage,
    required this.currentPage,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      lastVisiblePage: json['last_visible_page'],
      hasNextPage: json['has_next_page'],
      currentPage: json['current_page'],
    );
  }
}
