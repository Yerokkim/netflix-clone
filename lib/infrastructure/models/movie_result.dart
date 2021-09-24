import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';

part 'movie_result.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieResultModel extends MovieResult {
  MovieResultModel({
    required int id,
    String? name,
    String? title,
    String? backdropPath,
    List<int>? genreIds,
    String? originalLanguage,
    String? overview,
    double? popularity,
    String? posterPath,
    double? voteAverage,
    int? voteCount,
  }) : super(
          id: id,
          name: name,
          title: title,
          backdropPath: backdropPath,
          genreIds: genreIds,
          originalLanguage: originalLanguage,
          overview: overview,
          popularity: popularity,
          posterPath: posterPath,
          voteAverage: voteAverage,
          voteCount: voteCount,
        );

  @override
  Map<String, dynamic> toJson() => _$MovieResultModelToJson(this);

  factory MovieResultModel.fromJson(Map<String, dynamic> json) => _$MovieResultModelFromJson(json);
}
