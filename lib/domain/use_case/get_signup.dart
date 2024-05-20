import 'package:dartz/dartz.dart';
import 'package:fello_hackathon/domain/repository/i_signup_repo.dart';
import 'package:injectable/injectable.dart';

abstract class GetSignup {
  Future<bool> isSignedUp();
  Future<Either<String, Unit>> signup(String firstName, String lastName);
  Future<String> getUserData();
}

@LazySingleton(as: GetSignup)
class GetSignupImpl extends GetSignup {
  GetSignupImpl(this._iSignupRepo);

  final ISignupRepo _iSignupRepo;

  @override
  Future<bool> isSignedUp() {
    return _iSignupRepo.isSignedUp();
  }

  @override
  Future<Either<String, Unit>> signup(String firstName, String lastName) {
    return _iSignupRepo.signup(firstName, lastName);
  }

  @override
  Future<String> getUserData() {
    return _iSignupRepo.getUserData();
  }
}
