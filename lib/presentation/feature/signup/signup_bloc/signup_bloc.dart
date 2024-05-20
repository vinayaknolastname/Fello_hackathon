// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:fello_hackathon/domain/use_case/get_signup.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final GetSignup _getSignup;
  SignupBloc(this._getSignup) : super(SignupState.initial()) {
    on<_Signup>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          signupOption: none(),
        ),
      );

      final failureOrSuccess =
          await _getSignup.signup(event.firstName, event.lastName);

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            isLoading: false,
            signupOption: some(left(failure)),
          ),
        ),
        (success) => emit(
          state.copyWith(
            isLoading: false,
            signupOption: some(right(success)),
          ),
        ),
      );
    });
  }
}
