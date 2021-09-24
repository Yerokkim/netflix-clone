import 'package:netflix_clone/domain/series/tv_series_result.dart';

abstract class TvSeries {
  final int? page;
  final List<TvSeriesResult>? results;
  final int? totalPages;
  final int? totalResults;

  TvSeries({this.page, this.results, this.totalPages, this.totalResults});

  dynamic toJson();
}
