import 'package:fello_hackathon/domain/entity/goal.dart';
import 'package:fello_hackathon/presentation/feature/add_goal/add_goal_page.dart';
import 'package:fello_hackathon/presentation/feature/home/home_bloc/home_bloc.dart';
import 'package:fello_hackathon/presentation/feature/home/widgets/goal_card.dart';
import 'package:fello_hackathon/presentation/feature/home/widgets/home_page_appbar.dart';
import 'package:fello_hackathon/presentation/feature/home/widgets/total_goal_card.dart';
import 'package:fello_hackathon/utils/assets.dart';
import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/dependency_injection/dependency_injection.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<HomeBloc>()
          ..add(const HomeEvent.getAllGoals())
          ..add(const HomeEvent.getUserDetails()),
        child: const HomePageBody(),
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const HomePageAppBar(),
        const TotalGoalCard(),
        _addGoalSection(context),
        SliverPadding(
          padding: kAppPaddingAll12,
          sliver: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.isLoading
                  ? const SliverToBoxAdapter(
                      child: Center(
                          child: CircularProgressIndicator(
                        color: Colors.green,
                      )),
                    )
                  : builGoalList(state.goalList);
            },
          ),
        )
      ],
    );
  }

  Widget builGoalList(List<Goal> goalList) {
    return goalList.isEmpty
        ? SliverToBoxAdapter(
            child: Center(
              child: Column(
                children: [
                  LottieBuilder.asset(
                    kGoldAnimation,
                    height: 100.w,
                    width: 100.w,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "No Goals",
                    style: kTextStyle14MediumWhite,
                  ),
                ],
              ),
            ),
          )
        : SliverGrid.builder(
            itemCount: goalList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.3,
            ),
            itemBuilder: (context, index) {
              return GoalCard(goal: goalList[index]);
            },
          );
  }

  SliverPadding _addGoalSection(BuildContext context) {
    return SliverPadding(
      padding: kAppPaddingHorizontal12,
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Goals List",
              style: kTextStyle14MediumWhite,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddGoalPage()),
                ).then((value) {
                  BlocProvider.of<HomeBloc>(context)
                      .add(const HomeEvent.getAllGoals());
                });
              },
              icon: const Icon(
                Icons.add,
                size: 24.0,
              ),
              label: const Text(
                'Add Goal',
              ), // <-- Text
            ),
          ],
        ),
      ),
    );
  }
}
