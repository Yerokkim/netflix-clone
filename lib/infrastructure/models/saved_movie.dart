import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/domain/user/saved_movie.dart';
import 'package:netflix_clone/infrastructure/database/firestore_converters.dart';
import 'package:netflix_clone/infrastructure/models/movie_result.dart';

part 'saved_movie.g.dart';

@TimestampConverter()
@NullableTimestampConverter()
//@JsonSerializable(createToJson: false)

@JsonSerializable(explicitToJson: true)
class SavedMovieModel extends SavedMovie {
  SavedMovieModel({
    required String userId,
    required MovieResultModel movie,
    String? id,
    bool isAdded = true,
    DateTime? createdAt,
  }) : super(
          id: id,
          userId: userId,
          movie: movie,
          isAdded: isAdded,
          createdAt: createdAt,
        );

  factory SavedMovieModel.fromDocument(
    String documentId,
    Map<String, dynamic> json,
  ) {
    json['id'] = documentId;
    return _$SavedMovieModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$SavedMovieModelToJson(this);

  factory SavedMovieModel.fromJson(Map<String, dynamic> json) => _$SavedMovieModelFromJson(json);
}
