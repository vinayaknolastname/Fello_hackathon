import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:fello_hackathon/utils/string_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SignupDatasource {
  Future<bool> isSignedUp();
  Future<Either<String, Unit>> signup(String firstName, String lastName);
  Future<String> getUserData();
}

@LazySingleton(as: SignupDatasource)
class LocalSignupDatasoucre extends SignupDatasource {
  @override
  Future<bool> isSignedUp() async {
    bool status = false;
    try {
      final prefs = await SharedPreferences.getInstance();
      if (prefs.containsKey(appUser)) {
        status = true;
      } else {
        status = false;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return status;
  }

  @override
  Future<Either<String, Unit>> signup(String firstName, String lastName) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final userData = {
        "firstName": firstName,
        "lastName": lastName,
      };
      final status = await prefs.setString(appUser, json.encode(userData));
      if (status) {
        return right(unit);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return left("Something went wrong");
  }

  @override
  Future<String> getUserData() async {
    String userName = "";
    try {
      final prefs = await SharedPreferences.getInstance();
      final userDataJson = prefs.getString(appUser);
      if (userDataJson != null) {
        final userData = jsonDecode(userDataJson);
        userName = "${userData["firstName"]} ${userData["lastName"]}";
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return userName;
  }
}
