part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required bool isLoading,
      required List<Goal> goalList,
      required String greeting,
      required String userName,
      required double totalAmount}) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
      isLoading: false,
      goalList: [],
      totalAmount: 0,
      greeting: "Good Morning",
      userName: "Guest User",
    );
  }
}
