// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return MovieModel(
    page: json['page'] as int?,
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => MovieResultModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    totalPages: json['totalPages'] as int?,
    totalResults: json['totalResults'] as int?,
  );
}

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
