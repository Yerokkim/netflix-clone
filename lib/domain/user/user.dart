import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

abstract class User {
  @JsonKey(required: true, name: 'uid')
  final String id;

  @JsonKey(
    required: true,
  )
  final String name;

  @JsonKey()
  final DateTime? createdAt;

  @JsonKey(defaultValue: false)
  final bool hasSeenOnboarding;

  @JsonKey(defaultValue: false)
  bool? isNewUser;

  final String? languageCode;

  User({
    required this.id,
    required this.name,
    this.createdAt,
    this.hasSeenOnboarding = false,
    this.languageCode,
  });

  dynamic toJson();
}
