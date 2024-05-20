import 'package:dartz/dartz.dart';

abstract class ISignupRepo {
  Future<bool> isSignedUp();
  Future<Either<String, Unit>> signup(String firstName, String lastName);
  Future<String> getUserData();
}
