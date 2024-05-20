import 'package:bloc/bloc.dart';
import 'package:fello_hackathon/domain/entity/goal.dart';
import 'package:fello_hackathon/domain/use_case/get_goal.dart';
import 'package:fello_hackathon/domain/use_case/get_signup.dart';
import 'package:fello_hackathon/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetGoals _getGoals;
  final GetSignup _getSignup;
  HomeBloc(this._getGoals, this._getSignup) : super(HomeState.initial()) {
    on<_GetUserDetails>((event, emit) async {
      final userName = await _getSignup.getUserData();
      emit(state.copyWith(
        userName: userName,
        greeting: getGreeting(),
      ));
    });

    on<_GetAllGoals>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          goalList: state.goalList,
        ),
      );

      final goalList = await _getGoals.getAllGoals();
      double totalAmount = 0;
      for (var goal in goalList) {
        totalAmount = totalAmount + goal.currentAmount;
      }
      emit(
        state.copyWith(
          isLoading: false,
          goalList: goalList,
          totalAmount: totalAmount,
        ),
      );
    });
  }
}
