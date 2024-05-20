import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fello_hackathon/domain/use_case/get_signup.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetSignup _getSignup;

  SplashBloc(this._getSignup) : super(const _Initial()) {
    on<_IsSignedUp>((event, emit) async {
      final isSignedUp = await _getSignup.isSignedUp();
      if (isSignedUp) {
        emit(const SplashState.authenticated());
      } else {
        emit(const SplashState.unAuthenticated());
      }
    });
  }
}
