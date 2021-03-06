import 'package:dartz/dartz.dart';
import 'package:flutter_todo_notes_ddd/domain/core/failures.dart';
import 'package:flutter_todo_notes_ddd/domain/core/value_objects.dart';
import 'package:flutter_todo_notes_ddd/domain/core/value_validators.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
