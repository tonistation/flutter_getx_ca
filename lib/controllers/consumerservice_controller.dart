import 'package:ft_curso_avanzado/models/genre_model.dart';
import 'package:ft_curso_avanzado/service/podcast_service.dart';
import 'package:get/get.dart';

class ConsumerServiceController extends GetxController {
  final RxList<GenreModel> _genreList = RxList();
  List<GenreModel> get genresList => _genreList;

  @override
  onInit() {
    getGenres();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  Future<List<GenreModel>> getGenres() async =>
      _genreList.value = await PodcastService().getListGenres();
}
