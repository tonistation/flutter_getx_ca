import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:ft_curso_avanzado/models/genre_model.dart';

class PodcastService {
  Future<List<GenreModel>> getListGenres() async {
    final dio = Dio();
    String urlApiPodcast = 'https://listen-api.listennotes.com/api/v2/';
    String apiKeyPodcast = '39451a92812f45778d1cf3252f919707';

    try {
      // ignore: avoid_print

      final response = await dio.get("${urlApiPodcast}genres?top_level_only=1",
          options: Options(
            headers: {
              'X-ListenAPI-Key': apiKeyPodcast,
            },
          ));

      //print(response.data);
      return (response.data["genres"] as List)
          .map((json) => GenreModel.fromJson(json))
          .toList();
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
