import 'dart:convert';

import 'package:netflix_clone/domain/movie/i_movie_repository.dart';

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

enum ContentType { movie, series }

class MovieRepository implements IMovieRepository {
  final apiKey = env['MOVIE_DB_API'];

  @override
  Future<List<MovieResultModel>> getMovies({required ContentType type, String? query}) async {
    var movie;
    String api;
    try {
      if (type == ContentType.movie) {
        api = ApiService.popularMovieApi(apiKey: apiKey);
      } else {
        api = ApiService.popularSeriesApi(apiKey: apiKey);
      }

      final client = http.Client();

      final response = await client.get(Uri.parse(api));

      if (response.statusCode == 200) {
        final jsonToString = response.body;
        var toJson = json.decode(jsonToString);

        movie = MovieModel.fromJson(toJson);
      }
    } catch (e) {
      throw MoiveFailure.unexpected();
    }

    if (query != null && query.isNotEmpty) {
      final movieList = <MovieResultModel>[];

      for (final content in movie.results) {
        if (content.title != null || content.name != null) {
          var list;

          var searchQuery = query.toLowerCase().split('');
          if (content.title != null) {
            list = content.title?.toLowerCase().split('');
          } else {
            list = content.name?.toLowerCase().split('');
          }

          if (list[0] == searchQuery[0] && list[1] == searchQuery[1]) {
            movieList.add(content);
          }
        }

        if (movieList.isNotEmpty) {
          return movieList.toList();
        }
      }
    }
    return movie.results;
  }

  Future<String> addToMovieList({
    required MovieResult movie,
    required String userId,
  }) async {
    try {
      final now = DateTime.now();

      final userDocRef = FirestoreService.userMovieList(userId).doc();

      final movieInfo = SavedMovieModel(
        userId: userId,
        movie: movie as MovieResultModel,
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
