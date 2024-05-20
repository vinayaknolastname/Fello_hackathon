class Goal {
  final int id;
  final String goalName;
  final double percentage;
  final DateTime goalDate;
  final double totalAmount;
  final double currentAmount;

  Goal({
    required this.id,
    required this.goalName,
    required this.percentage,
    required this.goalDate,
    required this.totalAmount,
    required this.currentAmount,
  });
}
