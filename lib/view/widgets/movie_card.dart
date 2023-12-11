import 'package:flutter/material.dart';
import 'package:moviefixapp/model/movie_model.dart';

Widget movieCard(MovieResults movies) {
  return ListTile(
    leading: const Icon(Icons.movie),
    title: Text(movies.title ?? ""),
    subtitle: Text(movies.overview ?? ""),
  );
}
