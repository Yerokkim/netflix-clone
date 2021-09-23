import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures.dart';
import 'package:netflix_clone/domain/core/value_object.dart';
import 'package:netflix_clone/domain/core/value_validators.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
