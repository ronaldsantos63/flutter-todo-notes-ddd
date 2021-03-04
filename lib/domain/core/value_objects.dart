import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_todo_notes_ddd/domain/core/erros.dart';
import 'package:flutter_todo_notes_ddd/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writting (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => "Value($value)";
}
