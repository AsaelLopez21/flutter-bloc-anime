import 'package:bloc_cubit/models/anime_model.dart';

//! estados que puede tener el bloc
abstract class AnimeState {} //o => posibles estados

class AnimeLoading extends AnimeState {}

//! cuando ya se cargaron los animes
class AnimeLoaded extends AnimeState {
  final List<Datum> animes;
  AnimeLoaded(this.animes);
}
