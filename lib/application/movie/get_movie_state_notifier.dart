import 'package:netflix_clone/domain/movie/i_movie_repository.dart';

import 'package:netflix_clone/domain/movie/movie_result.dart';

import 'package:riverpod/riverpod.dart';

// class GetMovieStateNotifier extends StateNotifier<AsyncValue<List<MovieResult>>> {
//   final Reader _reader;

//   GetMovieStateNotifier(this._reader) : super(const AsyncValue.loading()) {
//     getMovies();
//   }

// Stream<AsyncValue> getMovies() async* {
//   try {
//     final _movieRepository = _reader(movieRepositoryProvider);

//     final movies = await _movieRepository.getMovies();

//     if (movies?.results != null) {
//       yield state = AsyncValue.data(movies!.results!);
//     } else {
//       yield state = state = AsyncValue.error('We can not fetch the movie!');
//     }
//   } catch (e) {
//     yield state = AsyncValue.error(e);
//   }
// }
// }
