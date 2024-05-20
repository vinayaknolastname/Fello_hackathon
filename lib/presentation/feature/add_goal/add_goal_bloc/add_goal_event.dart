part of 'add_goal_bloc.dart';

@freezed
class AddGoalEvent with _$AddGoalEvent {
  const factory AddGoalEvent.addGoal(String goalName, String amount) = _AddGoal;
  const factory AddGoalEvent.changeDate(DateTime newDate) = _ChangeDate;
}
