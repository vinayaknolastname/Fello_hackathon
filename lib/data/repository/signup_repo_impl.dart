import 'package:dartz/dartz.dart';
import 'package:fello_hackathon/data/datasource/signup_datasource.dart';
import 'package:fello_hackathon/domain/repository/i_signup_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISignupRepo)
class SignupRepo implements ISignupRepo {
  final SignupDatasource _datasource;

  SignupRepo(this._datasource);
  @override
  Future<bool> isSignedUp() async {
    bool status = false;
    try {
      status = await _datasource.isSignedUp();
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return status;
  }

  @override
  Future<Either<String, Unit>> signup(String firstName, String lastName) async {
    return await _datasource.signup(firstName, lastName);
  }

  @override
  Future<String> getUserData() async {
    return await _datasource.getUserData();
  }
}
