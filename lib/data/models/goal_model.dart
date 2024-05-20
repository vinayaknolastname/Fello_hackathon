import 'package:hive_flutter/hive_flutter.dart';
part 'goal_model.g.dart';

@HiveType(typeId: 0)
class GoalModel extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String goalName;

  @HiveField(2)
  final double percentage;

  @HiveField(3)
  final DateTime goalDate;

  @HiveField(4)
  final double totalAmount;

  @HiveField(5)
  final double currentAmount;

  GoalModel({
    required this.id,
    required this.goalName,
    required this.percentage,
    required this.goalDate,
    required this.totalAmount,
    required this.currentAmount,
  });
}
