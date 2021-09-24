import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netflix_clone/application/movie/get_movie_state_notifier.dart';

final movieStateNotifierProvider = StateNotifierProvider<GetMovieStateNotifier, AsyncValue>(
    (ref) => GetMovieStateNotifier(ref.read));
