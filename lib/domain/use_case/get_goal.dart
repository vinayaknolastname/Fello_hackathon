import 'package:dartz/dartz.dart';
import 'package:fello_hackathon/domain/entity/goal.dart';
import 'package:fello_hackathon/domain/repository/i_goal_repo.dart';
import 'package:injectable/injectable.dart';

abstract class GetGoals {
  Future<List<Goal>> getAllGoals();
  Future<Either<String, Unit>> addGoal(
      String goal, double amount, DateTime goalDate);
}

@LazySingleton(as: GetGoals)
class GetGoalsImpl extends GetGoals {
  final IGoalRepo _iGoalRepo;

  GetGoalsImpl(this._iGoalRepo);

  @override
  Future<List<Goal>> getAllGoals() {
    return _iGoalRepo.getAllGoals();
  }

  @override
  Future<Either<String, Unit>> addGoal(
      String goal, double amount, DateTime goalDate) {
    return _iGoalRepo.addGoal(goal, amount, goalDate);
  }
}
