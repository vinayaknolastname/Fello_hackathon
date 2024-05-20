import 'package:fello_hackathon/utils/text_style.dart';
import 'package:fello_hackathon/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({
    super.key,
    required this.onTap,
    this.selectedDate,
  });

  final VoidCallback onTap;
  final DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 8.h),
        padding: EdgeInsets.all(12.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.2),
        ),
        child: selectedDate == null
            ? Text(
                "Select a Date",
                style: kTextStyle12RegularGrey,
              )
            : Text(
                convertDateTime(selectedDate!),
                style: kTextStyle14RegularBlack,
              ),
      ),
    );
  }
}
