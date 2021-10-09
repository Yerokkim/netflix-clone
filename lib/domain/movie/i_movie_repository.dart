import 'package:netflix_clone/domain/movie/movie.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';

import 'package:netflix_clone/infrastructure/models/movie_result.dart';
import 'package:netflix_clone/infrastructure/movie/movie_repository.dart';
import 'package:riverpod/riverpod.dart';

final movieRepositoryProvider = Provider<IMovieRepository>((ref) => throw UnimplementedError());

abstract class IMovieRepository {
  Future<List<MovieResultModel?>> getMovies({
    required ContentType type,
    String query,
  });
  Future<String> addToMovieList({
    required MovieResult movie,
    required String userId,
  });
  Future<void> deleteMovie({
    required String id,
    required String userId,
  });

  Future<bool> hasAdded({required String movieId, required String userId});
}
