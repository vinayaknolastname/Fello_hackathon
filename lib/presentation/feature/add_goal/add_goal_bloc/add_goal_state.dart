part of 'add_goal_bloc.dart';

@freezed
class AddGoalState with _$AddGoalState {
  const factory AddGoalState({
    required bool isLoading,
    required Option<Either<String, Unit>> addGoalOption,
    required DateTime? selectedDate,
  }) = _AddGoalState;

  factory AddGoalState.initial() {
    return AddGoalState(
      isLoading: false,
      addGoalOption: none(),
      selectedDate: null,
    );
  }
}
