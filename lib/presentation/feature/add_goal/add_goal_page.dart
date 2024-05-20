import 'package:fello_hackathon/presentation/feature/add_goal/add_goal_bloc/add_goal_bloc.dart';
import 'package:fello_hackathon/presentation/feature/home/home_bloc/home_bloc.dart';
import 'package:fello_hackathon/presentation/widgets/app_eleveted_button.dart';
import 'package:fello_hackathon/presentation/widgets/app_textfield.dart';
import 'package:fello_hackathon/presentation/widgets/date_picker_widget.dart';
import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/dependency_injection/dependency_injection.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:fello_hackathon/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddGoalPage extends StatelessWidget {
  const AddGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Goals"),
      ),
      body: BlocProvider(
        create: (context) => getIt<HomeBloc>(),
        child: BlocProvider(
          create: (context) => getIt<AddGoalBloc>(),
          child: const AddGoalBody(),
        ),
      ),
    );
  }
}

class AddGoalBody extends StatefulWidget {
  const AddGoalBody({
    super.key,
  });

  @override
  State<AddGoalBody> createState() => _AddGoalBodyState();
}

class _AddGoalBodyState extends State<AddGoalBody> {
  final goalController = TextEditingController();
  final amountController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    goalController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddGoalBloc, AddGoalState>(
      listener: (context, state) {
        state.addGoalOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => Utils.showSnakbar(title: failure, context: context),
            (_) {
              BlocProvider.of<HomeBloc>(context).add(
                const HomeEvent.getAllGoals(),
              );
              Navigator.pop(context);
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Save money, set goals,",
                  style: kTextStyle14RegularWhite,
                ),
                Text(
                  "see results! 🌟💰",
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
                      top: 16.h,
                      labelText: "Goal Name",
                      controller: goalController,
                      validator: validateRequired,
                    ),
                    AppTextField(
                      top: 8.h,
                      labelText: "Amount",
                      controller: amountController,
                      keyboardType: TextInputType.number,
                      validator: validateAmount,
                    ),
                    BlocBuilder<AddGoalBloc, AddGoalState>(
                      builder: (context, state) {
                        return DatePickerWidget(
                          selectedDate: state.selectedDate,
                          onTap: () => selectDate(),
                        );
                      },
                    ),
                    const Spacer(),
                    AppElevetedButton(
                      onPressed: () => addNewGoal(),
                      label: "Continue",
                    ),
                    kHeight16,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> selectDate() async {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    ).then((newDate) {
      if (newDate != null) {
        BlocProvider.of<AddGoalBloc>(context).add(
          AddGoalEvent.changeDate(newDate),
        );
      }
    });
  }

  void addNewGoal() {
    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }

    BlocProvider.of<AddGoalBloc>(context).add(
      AddGoalEvent.addGoal(
        goalController.text.trim(),
        amountController.text.trim(),
      ),
    );
  }
}
