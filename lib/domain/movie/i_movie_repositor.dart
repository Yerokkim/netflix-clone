import 'package:netflix_clone/domain/movie/movie.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';
import 'package:netflix_clone/infrastructure/models/movie_result.dart';
import 'package:riverpod/riverpod.dart';

final movieRepositoryProvider = Provider<IMovieRepository>((ref) => throw UnimplementedError());

abstract class IMovieRepository {
  Future<Movie?> getMovies();
  Future<void> addToMovieList({
    required MovieResultModel movie,
    required String userId,
  });
}
