import 'package:netflix_clone/domain/movie/i_movie_repositor.dart';

import 'package:netflix_clone/domain/movie/movie_result.dart';

import 'package:riverpod/riverpod.dart';

class GetMovieStateNotifier extends StateNotifier<AsyncValue<List<MovieResult>>> {
  final Reader _reader;

  GetMovieStateNotifier(this._reader) : super(const AsyncValue.loading()) {
    getMovies();
  }

  Future<AsyncValue> getMovies() async {
    try {
      final _movieRepository = _reader(movieRepositoryProvider);

      final movies = await _movieRepository.getMovies();

      if (movies?.results != null) {
        return state = AsyncValue.data(movies!.results!);
      } else {
        return state = state = AsyncValue.error('We can not fetch the movie!');
      }
    } catch (e) {
      return state = AsyncValue.error(e);
    }
  }
}
