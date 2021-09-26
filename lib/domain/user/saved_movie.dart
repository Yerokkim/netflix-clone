import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';

abstract class SavedMovie {
  final String? id;

  @JsonKey(required: true)
  final String userId;

  final MovieResult movie;

  @JsonKey()
  final DateTime? createdAt;

  @JsonKey(defaultValue: true)
  bool? isAdded;

  SavedMovie({
    required this.userId,
    required this.movie,
    this.isAdded,
    this.createdAt,
    this.id,
  });

  dynamic toJson();
}
