import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  print(input);
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length > 7) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(input));
  }
}
