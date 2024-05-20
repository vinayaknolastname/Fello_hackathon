import 'package:fello_hackathon/presentation/feature/home/home_bloc/home_bloc.dart';
import 'package:fello_hackathon/utils/app_colors.dart';
import 'package:fello_hackathon/utils/assets.dart';
import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class TotalGoalCard extends StatelessWidget {
  const TotalGoalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.goalList.isEmpty
              ? kSizedBox
              : Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    color: AppColors.kGrey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 16.h),
                        child: Text(
                          "Goals",
                          style: kTextStyle25Bold,
                        ),
                      ),
                      kHeight12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LottieBuilder.asset(
                            kGoldAnimation,
                            height: 100.w,
                            width: 100.w,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Total Amount",
                                  style: kTextStyle16BoldWhite,
                                ),
                                Text(
                                  "\$ ${state.totalAmount}",
                                  style: kTextStyle25Bold,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
        },
      ),
    );
  }
}
