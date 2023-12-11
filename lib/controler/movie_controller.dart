import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:moviefixapp/model/movie_model.dart';
import 'package:moviefixapp/server_services/api_provider.dart';

class MovieListControler extends GetxController {
  ApiRepository apiRepository = ApiRepository();

  List<MovieResults>? moviesResultsList;
  bool isMoviesLoaded = false;
  @override
  void onInit() async {
    moviesResultsListFn();
    super.onInit();
  }

  void moviesResultsListFn() async {
    moviesResultsList = await apiRepository.getMoviesList();
    isMoviesLoaded = true;
    update();
  }
}
