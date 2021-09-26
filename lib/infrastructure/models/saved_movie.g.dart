// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedMovieModel _$SavedMovieModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['userId']);
  return SavedMovieModel(
    userId: json['userId'] as String,
    movie: MovieResultModel.fromJson(json['movie'] as Map<String, dynamic>),
    id: json['id'] as String?,
    isAdded: json['isAdded'] as bool? ?? true,
    createdAt: const NullableTimestampConverter()
        .fromJson(json['createdAt'] as Timestamp?),
  );
}

Map<String, dynamic> _$SavedMovieModelToJson(SavedMovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'movie': instance.movie.toJson(),
      'createdAt':
          const NullableTimestampConverter().toJson(instance.createdAt),
      'isAdded': instance.isAdded,
    };
