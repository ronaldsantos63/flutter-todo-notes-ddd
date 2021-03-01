import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_todo_notes_ddd/domain/auth/auth_failure.dart';
import 'package:flutter_todo_notes_ddd/domain/auth/email_address.dart';
import 'package:flutter_todo_notes_ddd/domain/auth/password.dart';

abstract class AuthFacadeContract {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
