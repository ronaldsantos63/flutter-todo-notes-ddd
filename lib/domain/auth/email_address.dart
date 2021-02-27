import 'package:dartz/dartz.dart';
import 'package:flutter_todo_notes_ddd/domain/core/failures.dart';
import 'package:flutter_todo_notes_ddd/domain/core/value_objects.dart';
import 'package:flutter_todo_notes_ddd/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}
