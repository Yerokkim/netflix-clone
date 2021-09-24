import 'package:json_annotation/json_annotation.dart';

abstract class TvSeriesResult {
  @JsonKey(required: true)
  final int id;

  @JsonKey(required: true)
  final String name;

  final String? backdropPath;
  final List<int>? genreIds;

  final String? overview;
  final double? popularity;
  final String? posterPath;

  final double? voteAverage;
  final int? voteCount;

  TvSeriesResult({
    required this.id,
    required this.name,
    this.backdropPath,
    this.overview,
    this.popularity,
    this.posterPath,
    this.voteAverage,
    this.voteCount,
    this.genreIds,
  });
}
