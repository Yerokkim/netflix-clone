import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/domain/user/user.dart';
import 'package:netflix_clone/infrastructure/database/firestore_converters.dart';

part 'user.g.dart';

@TimestampConverter()
@NullableTimestampConverter()
@JsonSerializable(explicitToJson: true)
class UserModel extends User {
  UserModel({
    required String id,
    required String name,
    DateTime? createdAt,
    String? languageCode,
    bool hasSeenOnboarding = false,
  }) : super(
          id: id,
          name: name,
          createdAt: createdAt,
          languageCode: languageCode,
          hasSeenOnboarding: hasSeenOnboarding,
        );

  factory UserModel.fromDocument(
    String documentId,
    Map<String, dynamic> json,
  ) {
    json['id'] = documentId;
    return _$UserModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
