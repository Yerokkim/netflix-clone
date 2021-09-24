import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_failure.freezed.dart';

@freezed
abstract class MoiveFailure with _$MoiveFailure {
  const factory MoiveFailure.unexpected() = UnexpectedMovieFailure;
}
