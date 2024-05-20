part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signup({
    required String firstName,
    required String lastName,
  }) = _Signup;
}
