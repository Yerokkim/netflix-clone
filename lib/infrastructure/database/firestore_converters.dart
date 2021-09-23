import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

class NullableTimestampConverter implements JsonConverter<DateTime?, Timestamp?> {
  const NullableTimestampConverter();

  @override
  Timestamp? toJson(DateTime? object) {
    if (object == null) {
      return null;
    }

    return Timestamp.fromDate(object);
  }

  @override
  DateTime? fromJson(Timestamp? json) {
    if (json == null) {
      return null;
    }

    return DateTime.fromMillisecondsSinceEpoch(json.millisecondsSinceEpoch);
  }
}

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  Timestamp toJson(DateTime object) => Timestamp.fromDate(object);

  @override
  DateTime fromJson(Timestamp json) =>
      DateTime.fromMillisecondsSinceEpoch(json.millisecondsSinceEpoch);
}
