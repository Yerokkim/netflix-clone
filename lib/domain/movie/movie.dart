import 'package:netflix_clone/domain/movie/movie_result.dart';

abstract class Movie {
  final int? page;
  late final List<MovieResult>? results;
  final int? totalPages;
  final int? totalResults;

  Movie({this.page, this.results, this.totalPages, this.totalResults});

  dynamic toJson();
}
