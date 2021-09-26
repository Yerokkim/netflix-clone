import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netflix_clone/application/movie/add_to_list/add_to_list_state_notifier.dart';
import 'package:netflix_clone/application/movie/get_movie_state_notifier.dart';

final movieStateNotifierProvider = StateNotifierProvider<GetMovieStateNotifier, AsyncValue>(
    (ref) => GetMovieStateNotifier(ref.read));

final addToListStateNotifierProvider =
    StateNotifierProvider.family<AddToListStateNotifier, AddToListState, String>(
        (ref, movieId) => AddToListStateNotifier(ref.read, movieId: movieId));
