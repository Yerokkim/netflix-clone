import 'package:json_annotation/json_annotation.dart';

abstract class MovieResult {
  @JsonKey(required: true)
  final int id;

  @JsonKey(required: true)
  final String title;

  final String? backdropPath;
  final List<int>? genreIds;

  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;

  @JsonKey(
    defaultValue: false,
  )
  final bool video;
  final double? voteAverage;
  final int? voteCount;

  MovieResult({
    required this.id,
    required this.title,
    this.backdropPath,
    this.originalLanguage,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.video = false,
    this.voteAverage,
    this.voteCount,
    this.originalTitle,
    this.genreIds,
  });
}
