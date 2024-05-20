import 'package:dartz/dartz.dart';
import 'package:fello_hackathon/domain/entity/goal.dart';

abstract class IGoalRepo {
  Future<List<Goal>> getAllGoals();
  Future<Either<String, Unit>> addGoal(
      String goal, double amount, DateTime goalDate);
}
