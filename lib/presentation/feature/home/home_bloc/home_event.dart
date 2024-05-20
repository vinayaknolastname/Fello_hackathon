part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllGoals() = _GetAllGoals;
  const factory HomeEvent.getUserDetails() = _GetUserDetails;
}
