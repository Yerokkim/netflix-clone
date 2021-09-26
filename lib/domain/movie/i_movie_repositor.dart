import 'package:netflix_clone/domain/movie/movie.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';
import 'package:netflix_clone/infrastructure/models/movie_result.dart';
import 'package:riverpod/riverpod.dart';

final movieRepositoryProvider = Provider<IMovieRepository>((ref) => throw UnimplementedError());

abstract class IMovieRepository {
  Future<Movie?> getMovies();
  Future<String> addToMovieList({
    required MovieResultModel movie,
    required String userId,
  });
  Future<void> deleteMovie({
    required String id,
    required String userId,
  });

  Future<bool> hasAdded({required String movieId, required String userId});
}
