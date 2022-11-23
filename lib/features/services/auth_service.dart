import 'dart:convert';

import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/constants/error_handling.dart';
import 'package:amazon_clone_app/constants/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/.env.dart';
import '../../models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  // sign up user
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(id: '', name: name, email: email, password: password, address: '', token: '', type: '');
      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8'},
      );
      if (context.mounted) {
        return httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {},
        );
      }
    } catch (er) {
      showSnackBar(context, er.toString());
    }
  }

  // sign in user
  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8'},
      );

      debugPrint(res.body);
      if (context.mounted) {
        return httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
          },
        );
      }
    } catch (er) {
      showSnackBar(context, er.toString());
    }
  }
}
