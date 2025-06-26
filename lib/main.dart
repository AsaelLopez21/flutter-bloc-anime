import 'package:bloc_cubit/app.dart';
import 'package:bloc_cubit/blocs/anime_bloc.dart';
import 'package:bloc_cubit/blocs/anime_event.dart';
import 'package:bloc_cubit/data/lista_animes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final listaAnime =
      ListaAnimes(); //!instancia de lista de animes, para dar datos a bloc

  runApp(
    RepositoryProvider.value(
      value: listaAnime, //! dar lista de animes a todos los widgets
      child: BlocProvider(
        //! dar bloc
        //!le damos lista de anumes y damos evento de cargar animes
        create: (context) => AnimeBloc(listaAnime)..add(LoadAnime()),
        child: MyApp(),
      ),
    ),
  );
}
