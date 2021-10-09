import 'package:netflix_clone/domain/auth/i_auth_facade.dart';
import 'package:netflix_clone/domain/movie/i_movie_repository.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';
import 'package:riverpod/riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_list_state.dart';
part 'add_to_list_state_notifier.freezed.dart';

class AddToListStateNotifier extends StateNotifier<AddToListState> {
  final Reader _read;
  final String movieId;

  AddToListStateNotifier(this._read, {required this.movieId}) : super(AddToListState.unClick()) {
    _checkItemFromTheList(movieId);
  }

  Future<AddToListState> _checkItemFromTheList(String? movieId) async {
    final _movieRepository = _read(movieRepositoryProvider);
    final currentUserId = await _read(firebaseAuthRepositoryProvider).getCurrentUserId();
    final isMovieInTheList =
        await _movieRepository.hasAdded(movieId: movieId!, userId: currentUserId);

    if (isMovieInTheList) {
      return state = AddToListState.clicked(null);
    } else {
      return state = AddToListState.unClick();
    }
  }

  Future<AddToListState> toggleAddToList(
      {required MovieResult movie, String? movieDocumentId}) async {
    final currentUserId = await _read(firebaseAuthRepositoryProvider).getCurrentUserId();
    final _movieRepository = _read(movieRepositoryProvider);
    if (state is UnClickState) {
      try {
        final docId = await _movieRepository.addToMovieList(movie: movie, userId: currentUserId);

        return state = AddToListState.clicked(docId);
      } catch (e) {
        return state = AddToListState.toggleFailed('');
      }
    } else {
      await _movieRepository.deleteMovie(id: movieDocumentId!, userId: currentUserId);
      return state = AddToListState.unClick();
    }
  }
}
