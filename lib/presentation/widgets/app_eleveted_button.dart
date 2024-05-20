import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:fello_hackathon/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppElevetedButton extends StatelessWidget {
  const AppElevetedButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.isBusy,
  });

  final void Function() onPressed;
  final String label;
  final bool? isBusy;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isBusy ?? false,
      child: GestureDetector(
        onTap: () => dismissKeyboard(context),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Padding(
            padding: kAppPaddingVertical10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: kTextStyle14MediumWhite,
                ),
                Visibility(
                  visible: isBusy ?? false,
                  child: Row(
                    children: [
                      kWidth20,
                      SizedBox(
                        width: 12.r,
                        height: 12.r,
                        child: const CircularProgressIndicator(
                          strokeWidth: 2.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
