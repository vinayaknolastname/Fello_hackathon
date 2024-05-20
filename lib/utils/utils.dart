import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utils {
  static Future<void> showSnakbar({
    required String title,
    required BuildContext context,
    Color? color,
  }) async {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: color ?? Colors.red,
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(20),
      content: Center(
        child: Text(title),
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

void dismissKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);

  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}

String? validateRequired(val, {errorText = "This field is required"}) {
  if (val.length == 0) {
    return errorText;
  }
  if (val.length > 0) {
    if (val.length < 3) {
      return "Enter atleast 3 characters";
    }
  }

  return null;
}

String? validateAmount(String? value) {
  if (value == null || value.isEmpty) {
    return "Enter amount";
  } else if (!RegExp(r'^[1-9]\d*(\.\d{1,2})?$').hasMatch(value)) {
    return 'Invalid amount';
  }
  return null;
}

String convertDateTime(DateTime dateTime) {
  String formattedDate = DateFormat('d MMM yyyy').format(dateTime);
  return formattedDate;
}

int generateRandomNumber() {
  var random = Random();
  return random.nextInt(100000) + 1;
}

String getGreeting() {
  DateTime now = DateTime.now();
  int hour = now.hour;

  if (hour >= 5 && hour < 12) {
    return 'Good morning';
  } else if (hour >= 12 && hour < 18) {
    return 'Good afternoon';
  } else {
    return 'Good night';
  }
}
