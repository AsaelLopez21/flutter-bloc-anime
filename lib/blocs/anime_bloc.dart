import 'package:bloc/bloc.dart';
import 'package:bloc_cubit/blocs/anime_event.dart';
import 'package:bloc_cubit/blocs/anime_state.dart';
import 'package:bloc_cubit/data/lista_animes.dart';

class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
  //y => recibe animeevent, emite animestate
  final ListaAnimes respuestaAnime; //o => acceder a la API
  AnimeBloc(this.respuestaAnime) : super(AnimeLoading()) {
    //o => recibe repositorio, estado inicial cargando
    on<LoadAnime>((event, emit) async {
      final animes = await respuestaAnime.fetchItems(); //o => llama fetch items
      emit(AnimeLoaded(animes)); //o => emite anime loaded con lo obtenido
    });
  }
}
