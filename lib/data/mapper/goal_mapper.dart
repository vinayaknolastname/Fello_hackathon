import 'package:fello_hackathon/data/models/goal_model.dart';
import 'package:fello_hackathon/domain/entity/goal.dart';

class GoalMapper {
  static Goal fromGoalModal(GoalModel goal) {
    return Goal(
      id: goal.id,
      goalName: goal.goalName,
      percentage: goal.percentage,
      goalDate: goal.goalDate,
      totalAmount: goal.totalAmount,
      currentAmount: goal.currentAmount,
    );
  }

  static GoalModel fromGoal(Goal goal) {
    return GoalModel(
      id: goal.id,
      goalName: goal.goalName,
      percentage: goal.percentage,
      goalDate: goal.goalDate,
      totalAmount: goal.totalAmount,
      currentAmount: goal.currentAmount,
    );
  }
}
