import 'dart:convert';

import 'package:amazon_clone_app/constants/consts.dart';
import 'package:amazon_clone_app/constants/error_handling.dart';
import 'package:amazon_clone_app/constants/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/.env.dart';
import '../../global/controllers/auth_controller.dart';
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
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (context.mounted) {
        return httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            AuthController.instance.setUser(res.body);
            await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
            Get.offAllNamed('/home');
          },
        );
      }
    } catch (er) {
      showSnackBar(context, er.toString());
    }
  }

  // get user data
  void getUserData({
    required BuildContext context,
  }) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('x-auth-token');
      final userData = GetStorage();

      if (token == null) {
        prefs.setString('x-auth-token', '');
      }

      var tokenRes = await http.post(
        Uri.parse('$uri/tokenIsValid'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': token!,
        },
      );
      var response = jsonDecode(tokenRes.body);
      if (response == true) {
        // get user data
        http.Response userRes = await http.get(
          Uri.parse('$uri/'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'x-auth-token': token,
          },
        );
        userData.write('user', userRes.body);
        userData.write('isLogged', true);
        AuthController.instance.setUser(userRes.body);
        // Get.offNamedUntil(RoutesClass.home, (route) => false);
      }
    } catch (er) {
      showSnackBar(context, er.toString());
    }
  }
}
