import 'package:fello_hackathon/utils/app_colors.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.top = 0.0,
    required this.labelText,
    this.validator,
    this.controller,
    this.keyboardType = TextInputType.emailAddress,
  });

  final double top;
  final String labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        keyboardAppearance: Brightness.dark,
        style: const TextStyle(color: AppColors.kBlack),
        cursorColor: AppColors.kTextGrey,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: kTextStyle14RegularGrey,
          hintStyle: kTextStyle14RegularGrey,
          contentPadding: const EdgeInsets.all(12),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.grey, width: 0.2),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.grey, width: 0.2),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.red, width: 0.2),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.red, width: 0.2),
          ),
        ),
      ),
    );
  }
}
