import 'package:bloc_cubit/models/anime_model.dart';
import 'package:bloc_cubit/widgets/details_content.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //o => convertir a tipo datum(anime) el argumento recibido en la ruta
    final Datum anime = ModalRoute.of(context)!.settings.arguments as Datum; 
    return Scaffold(
      appBar: AppBar(title: Text(anime.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AnimeDetailsContent(anime: anime),
      ),
    );
  }
}
