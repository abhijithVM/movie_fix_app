import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:moviefixapp/model/movie_model.dart';

class ApiRepository {
  Dio client = Dio();

  Future<List<MovieResults>> getMoviesList() async {
    List<MovieResults>? moviesResultsList = [];
    debugPrint("test MoviesResult list *******");
    final response = await client.get(
      "https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed",
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    for (var element in (response.data['results'] as List)) {
      moviesResultsList.add(
        MovieResults.fromJson(element),
      );
    }

    return moviesResultsList;
  }
}
