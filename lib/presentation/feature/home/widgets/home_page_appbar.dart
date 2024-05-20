import 'package:cached_network_image/cached_network_image.dart';
import 'package:fello_hackathon/presentation/feature/home/home_bloc/home_bloc.dart';
import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      centerTitle: false,
      snap: true,
      floating: true,
      title: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi, ${state.greeting}",
                style: kTextStyle14RegularWhite,
              ),
              Text(
                state.userName,
                style: kTextStyle16BoldWhite,
              ),
            ],
          );
        },
      ),
      actions: [
        Padding(
          padding: kAppbarRightPadding,
          child: const CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              "https://krausefx.com/assets/FelixKrauseCropped.jpg",
            ),
          ),
        ),
      ],
    );
  }
}
