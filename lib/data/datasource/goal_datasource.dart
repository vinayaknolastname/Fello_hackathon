import 'package:dartz/dartz.dart';
import 'package:fello_hackathon/data/mapper/goal_mapper.dart';
import 'package:fello_hackathon/data/models/goal_model.dart';
import 'package:fello_hackathon/domain/entity/goal.dart';
import 'package:fello_hackathon/utils/configure_hive_db.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class GoalDatasource {
  Future<List<GoalModel>> getAllGoals();
  Future<Either<String, Unit>> addGoal(Goal goal);
}

@LazySingleton(as: GoalDatasource)
class LocalDatasource extends GoalDatasource {
  @override
  Future<List<GoalModel>> getAllGoals() async {
    List<GoalModel> goals = [];
    try {
      final goalBox = MyLocalDB.getGoalBox();
      goals = goalBox.values.toList();
    } catch (e) {
      debugPrint(e.toString());
    }
    return goals;
  }

  @override
  Future<Either<String, Unit>> addGoal(Goal goal) async {
    try {
      final customerBox = MyLocalDB.getGoalBox();
      final goalModal = GoalMapper.fromGoal(goal);
      await customerBox.put(goal.id, goalModal);
      return right(unit);
    } catch (e) {
      debugPrint(e.toString());
      return left("something went wrong");
    }
  }
}
