import 'package:fello_hackathon/utils/dependency_injection/dependency_injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String env) async {
  getIt.init(environment: env);
}
