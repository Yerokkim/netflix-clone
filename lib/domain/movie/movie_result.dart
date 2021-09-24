import 'package:json_annotation/json_annotation.dart';

abstract class MovieResult {
  @JsonKey(required: true)
  final int id;

  final String? name;

  final String? title;

  @JsonKey(
    name: 'backdrop_path',
  )
  final String? backdropPath;

  @JsonKey(
    name: 'genre_ids',
  )
  final List<int>? genreIds;

  @JsonKey(
    name: 'original_language',
  )
  final String? originalLanguage;

  final String? overview;
  final double? popularity;

  @JsonKey(
    name: 'poster_path',
  )
  final String? posterPath;

  @JsonKey(
    name: 'vote_average',
  )
  final double? voteAverage;

  @JsonKey(
    name: 'vote_count',
  )
  final int? voteCount;

  MovieResult({
    required this.id,
    this.name,
    this.title,
    this.backdropPath,
    this.originalLanguage,
    this.overview,
    this.popularity,
    this.posterPath,
    this.voteAverage,
    this.voteCount,
    this.genreIds,
  });

  dynamic toJson();
}
