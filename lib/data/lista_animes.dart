import 'dart:convert';
import 'package:bloc_cubit/models/anime_model.dart';
import 'package:bloc_cubit/models/anime_response.dart';
import 'package:http/http.dart' as http;

class ListaAnimes {
  final urlAnime = 'api.jikan.moe';
  final segments = '/v4/anime';
  //!lista de animes
  Future<List<Datum>> fetchItems() async {
    final url = Uri.https(urlAnime, segments);
    var response = await http.get(url);
    final Map<String, dynamic> jsonMap = jsonDecode(response.body);

    final animeResponse = AnimeResponse.fromJson(jsonMap);
    //y => regresar lista de animes
    return animeResponse.data;
  }
}
