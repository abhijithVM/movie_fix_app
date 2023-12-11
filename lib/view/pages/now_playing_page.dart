import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviefixapp/controler/movie_controller.dart';
import 'package:moviefixapp/model/movie_model.dart';
import 'package:moviefixapp/view/widgets/movie_card.dart';

class NowPlayingPage extends StatelessWidget {
  const NowPlayingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final MovieListControler movieListControler = Get.put(MovieListControler());

    return GetBuilder<MovieListControler>(
      init: Get.put(MovieListControler()),
      initState: (_) {},
      builder: (movieListControler) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                movieListControler.isMoviesLoaded
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height * .9,
                        child: ListView.builder(
                          itemCount:
                              movieListControler.moviesResultsList?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return movieCard(
                                movieListControler.moviesResultsList?[index] ??
                                    MovieResults());
                          },
                        ),
                      )
                    : const Center(
                        child: Text(
                          "Loading.....",
                          textAlign: TextAlign.center,
                        ),
                      )
              ],
            ),
          ),
        );
      },
    );
  }
}
