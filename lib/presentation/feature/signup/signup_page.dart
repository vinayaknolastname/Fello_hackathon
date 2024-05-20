import 'package:fello_hackathon/presentation/feature/home/home_page.dart';
import 'package:fello_hackathon/presentation/feature/signup/signup_bloc/signup_bloc.dart';
import 'package:fello_hackathon/presentation/widgets/app_eleveted_button.dart';
import 'package:fello_hackathon/presentation/widgets/app_textfield.dart';
import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/dependency_injection/dependency_injection.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:fello_hackathon/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignupBloc>(),
        child: const SignupBody(),
      ),
    );
  }
}

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        state.signupOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => Utils.showSnakbar(title: failure, context: context),
            (_) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                (route) => false,
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "welcome to saving app",
                    style: kTextStyle14RegularWhite,
                  ),
                  Text(
                    "tell us your name",
                    style: kTextStyle30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextField(
                        top: 20.h,
                        labelText: "First Name",
                        controller: firstNameController,
                        validator: validateRequired,
                      ),
                      AppTextField(
                        top: 10.h,
                        labelText: "Last Name",
                        controller: lastNameController,
                        validator: validateRequired,
                      ),
                      kHeight8,
                      Text(
                        "enter the first & last name",
                        style: kTextStyle14RegularGrey,
                      ),
                      const Spacer(),
                      AppElevetedButton(
                        onPressed: () => signup(),
                        label: "Continue",
                      ),
                      kHeight16,
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void signup() {
    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }
    BlocProvider.of<SignupBloc>(context).add(
      SignupEvent.signup(
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
      ),
    );
  }
}
