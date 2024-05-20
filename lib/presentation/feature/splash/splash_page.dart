import 'package:fello_hackathon/presentation/feature/home/home_page.dart';
import 'package:fello_hackathon/presentation/feature/signup/signup_page.dart';
import 'package:fello_hackathon/presentation/feature/splash/splash_bloc/splash_bloc.dart';
import 'package:fello_hackathon/utils/assets.dart';
import 'package:fello_hackathon/utils/dependency_injection/dependency_injection.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SplashBloc>()..add(const SplashEvent.isSignedUp()),
      child: BlocBuilder<SplashBloc, SplashState>(
        builder: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            state.map(
              initial: (value) => null,
              authenticated: (value) => _gotoNextPage(context, true),
              unAuthenticated: (value) => _gotoNextPage(context, false),
            );
          });
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(kGoldAnimation),
                  Text(
                    "welcome to saving app",
                    style: kTextStyle30,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _gotoNextPage(BuildContext context, bool isAuthenticated) async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) =>
                isAuthenticated ? const HomePage() : const SignupPage(),
          ),
          (route) => false,
        );
      },
    );
  }
}
