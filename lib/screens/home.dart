import 'package:bloc_cubit/blocs/anime_bloc.dart';
import 'package:bloc_cubit/blocs/anime_state.dart';
import 'package:bloc_cubit/widgets/custom_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mejores Animes')),
      body: BlocBuilder<AnimeBloc, AnimeState>( //y => escuchar aniime bloc y anime statee
        builder: (context, state) {//y => recibir estado del bloc
          if (state is AnimeLoading) { //y => mostrar imagen de carga si estado es loading
            return Center(
              child: Image.asset('assets/images/loading.gif'),
            );
          } else if (state is AnimeLoaded) {//y => regresar custom swiper con animes si estado es loaded
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Recomendaciones de Anime",
                    style: TextStyle(fontSize: 24),
                  ),
                  CustomSwiper(animes: state.animes),
                ],
              ),
            );
          }
          return Container();//y => si estado no es cargando ni cargado regresar contenedor vacio
        },
      ),
    );
  }
}
