import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netflix_clone/application/movie/add_to_list/add_to_list_state_notifier.dart';
import 'package:netflix_clone/application/movie/get_movie_state_notifier.dart';
import 'package:netflix_clone/domain/movie/i_movie_repository.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';
import 'package:netflix_clone/infrastructure/movie/movie_repository.dart';

// final movieStateNotifierProvider = StateNotifierProvider<GetMovieStateNotifier, AsyncValue>(
//     (ref) => GetMovieStateNotifier(ref.read));

final addToListStateNotifierProvider =
    StateNotifierProvider.family<AddToListStateNotifier, AddToListState, String>(
        (ref, movieId) => AddToListStateNotifier(ref.read, movieId: movieId));

final getAllSeriesProvider = StreamProvider<List<MovieResult?>>((ref) async* {
  final movieRepository = ref.watch(movieRepositoryProvider);
  final series = await movieRepository.getMovies(type: ContentType.series);
  yield series;
});

final getAllMovieProvider = StreamProvider<List<MovieResult?>>((ref) async* {
  final movieRepository = ref.watch(movieRepositoryProvider);
  final movies = await movieRepository.getMovies(type: ContentType.movie);
  yield movies;
});

final contentSearchProvider =
    StreamProvider.autoDispose.family<List<MovieResult?>, String>((ref, title) async* {
  final contentRepository = ref.watch(movieRepositoryProvider);
  final contents = await contentRepository.getMovies(type: ContentType.movie, query: title);

  yield contents;
});
