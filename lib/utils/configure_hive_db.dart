import 'package:fello_hackathon/data/models/goal_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MyLocalDB {
  static Future<void> configureHiveDB() async {
    await Hive.initFlutter();
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(GoalModelAdapter());
    }

    await Hive.openBox<GoalModel>("GOAL_DB");
  }

  static Box<GoalModel> getGoalBox() {
    return Hive.box<GoalModel>("GOAL_DB");
  }
}
