import 'package:bloc_cubit/models/anime_model.dart';
import 'package:flutter/material.dart';

class AnimeDetailsContent extends StatelessWidget {
  final Datum anime;
  const AnimeDetailsContent({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    final imageUrl = anime.images['jpg']?.imageUrl ?? '';

    //! guardar los generos en la lista de chips
    List<Widget> genreChips = [];
    for (var genre in anime.genres) {
      genreChips.add(Chip(label: Text(genre.name)));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imageUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 16),
        Text(anime.title, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber),
            const SizedBox(width: 4),
            Text('${anime.score}'),
            const SizedBox(width: 16),
            Text('Episodes: ${anime.episodes}'),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(spacing: 8, children: genreChips),
        const SizedBox(height: 16),
        Expanded(
          child: SingleChildScrollView(
            child: Text(
              anime.synopsis,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
