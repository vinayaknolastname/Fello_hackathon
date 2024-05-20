import 'package:fello_hackathon/presentation/feature/splash/splash_page.dart';
import 'package:fello_hackathon/utils/app_colors.dart';
import 'package:fello_hackathon/utils/configure_hive_db.dart';
import 'package:fello_hackathon/utils/dependency_injection/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.dev);
  await MyLocalDB.configureHiveDB();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (_, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Colors.white,
                  fontFamily: 'Taviraj',
                ),
            primarySwatch: AppColors.appColor,
            scaffoldBackgroundColor: Colors.black,
          ),
          home: const SplashPage(),
        );
      },
    );
  }
}
