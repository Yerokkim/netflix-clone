// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieResultModel _$MovieResultModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id']);
  return MovieResultModel(
    id: json['id'] as int,
    name: json['name'] as String?,
    title: json['title'] as String?,
    backdropPath: json['backdrop_path'] as String?,
    genreIds:
        (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
    originalLanguage: json['original_language'] as String?,
    overview: json['overview'] as String?,
    popularity: (json['popularity'] as num?)?.toDouble(),
    posterPath: json['poster_path'] as String?,
    voteAverage: (json['vote_average'] as num?)?.toDouble(),
    voteCount: json['vote_count'] as int?,
  );
}

Map<String, dynamic> _$MovieResultModelToJson(MovieResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'original_language': instance.originalLanguage,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
