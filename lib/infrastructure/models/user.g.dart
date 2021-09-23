// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['uid', 'name']);
  return UserModel(
    id: json['uid'] as String,
    name: json['name'] as String,
    createdAt: const NullableTimestampConverter()
        .fromJson(json['createdAt'] as Timestamp?),
    languageCode: json['languageCode'] as String?,
    hasSeenOnboarding: json['hasSeenOnboarding'] as bool? ?? false,
  )..isNewUser = json['isNewUser'] as bool? ?? false;
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.id,
      'name': instance.name,
      'createdAt':
          const NullableTimestampConverter().toJson(instance.createdAt),
      'hasSeenOnboarding': instance.hasSeenOnboarding,
      'isNewUser': instance.isNewUser,
      'languageCode': instance.languageCode,
    };
