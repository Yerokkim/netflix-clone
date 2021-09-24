import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/domain/movie/movie.dart';

import 'package:netflix_clone/infrastructure/models/movie_result.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieModel extends Movie {
  MovieModel({
    int? page,
    List<MovieResultModel>? results,
    int? totalPages,
    int? totalResults,
  }) : super(
          page: page,
          results: results,
          totalPages: totalPages,
          totalResults: totalResults,
        );

  // MovieModel.fromJson(Map<String, dynamic> json) {
  //   page = json['page'];
  //   if (json['results'] != null) {
  //     results =  List<Results>();
  //     json['results'].forEach((v) {
  //       results.add(new Results.fromJson(v));
  //     });
  //   }
  //   totalPages = json['total_pages'];
  //   totalResults = json['total_results'];
  // }

  factory MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['page'] = this.page;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = this.totalPages;
    data['total_results'] = this.totalResults;
    return data;
  }

  // @override
  // Map<String, dynamic> toJson() => _$MovieModelToJson(this);

}
