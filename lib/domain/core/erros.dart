import 'package:flutter_todo_notes_ddd/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString(
        "Encountered a ValueFailure at an unrecoverable point. Terminating. Failure was: $valueFailure");
  }
}
