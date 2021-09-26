import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:netflix_clone/domain/movie/i_movie_repositor.dart';
import 'package:netflix_clone/domain/movie/movie.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:netflix_clone/domain/movie/movie_failure.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';
import 'package:netflix_clone/domain/user/saved_movie.dart';
import 'package:netflix_clone/infrastructure/database/external_api_service.dart';
import 'package:http/http.dart' as http;
import 'package:netflix_clone/infrastructure/database/firestore_service.dart';
import 'package:netflix_clone/infrastructure/models/movie.dart';
import 'package:netflix_clone/infrastructure/models/movie_result.dart';
import 'package:netflix_clone/infrastructure/models/saved_movie.dart';

class MovieRepository implements IMovieRepository {
  final apiKey = env['MOVIE_DB_API'];

  @override
  Future<Movie?> getMovies() async {
    var movie;
    try {
      final api = ApiService.popularMovieApi(apiKey: apiKey);

      final client = http.Client();

      final response = await client.get(Uri.parse(api));

      if (response.statusCode == 200) {
        final jsonToString = response.body;
        var toJson = json.decode(jsonToString);

        movie = MovieModel.fromJson(toJson);

        return movie;
      }
    } catch (e) {
      throw MoiveFailure.unexpected();
    }

    return movie;
  }

  Future<String> addToMovieList({
    required MovieResultModel movie,
    required String userId,
  }) async {
    try {
      final now = DateTime.now();

      final userDocRef = FirestoreService.userMovieList(userId).doc();

      final movieInfo = SavedMovieModel(
        userId: userId,
        movie: movie,
        createdAt: now,
        id: userDocRef.id,
      );

      await userDocRef.set(movieInfo.toJson());
      return userDocRef.id;
    } catch (e) {
      throw const MoiveFailure.unexpected();
    }
  }

  @override
  Future<void> deleteMovie({required String id, required String userId}) async {
    try {
      await FirestoreService.userMovieList(userId).doc(id).delete();
    } catch (e) {
      throw const MoiveFailure.unexpected();
    }
  }

  @override
  Future<bool> hasAdded({
    required String movieId,
    required String userId,
  }) async {
    List<SavedMovie> movieList = [];
    FirestoreService.userMovieList(userId).snapshots().map((snap) {
      movieList = snap.docs.map((document) {
        return SavedMovieModel.fromJson(document.data());
      }).toList();

      return movieList.any((e) => e.movie.id.toString() == movieId);
    });
    return movieList.any((e) => e.movie.id.toString() == movieId);
  }
}
