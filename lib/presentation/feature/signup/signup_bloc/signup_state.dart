part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isLoading,
    required Option<Either<String, Unit>> signupOption,
  }) = _SignupState;

  factory SignupState.initial() {
    return SignupState(
      signupOption: none(),
      isLoading: false,
    );
  }
}
