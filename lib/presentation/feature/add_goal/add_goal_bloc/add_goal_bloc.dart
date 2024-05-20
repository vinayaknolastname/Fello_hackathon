import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fello_hackathon/domain/use_case/get_goal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_goal_event.dart';
part 'add_goal_state.dart';
part 'add_goal_bloc.freezed.dart';

@injectable
class AddGoalBloc extends Bloc<AddGoalEvent, AddGoalState> {
  final GetGoals _getGoals;
  AddGoalBloc(this._getGoals) : super(AddGoalState.initial()) {
    on<_ChangeDate>(
      (event, emit) => emit(
        state.copyWith(
          selectedDate: event.newDate,
        ),
      ),
    );

    on<_AddGoal>((event, emit) async {
      if (state.selectedDate == null) {
        return;
      }
      emit(
        state.copyWith(
          isLoading: true,
          addGoalOption: none(),
        ),
      );
      final amount = double.tryParse(event.amount) ?? 0;
      final failureOrSuccess =
          await _getGoals.addGoal(event.goalName, amount, state.selectedDate!);

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(isLoading: false, addGoalOption: some(left(failure))),
        ),
        (success) => emit(
          state.copyWith(isLoading: false, addGoalOption: some(right(success))),
        ),
      );
    });
  }
}
