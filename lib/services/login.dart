import 'package:ar_app/Models/login_info.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginUser {
  Future<LoginModel> addLoginInfo({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse('https://a-eye-fj81.onrender.com/customers/login/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return LoginModel.fromJson(data);
    } else {
      throw Exception('Failed to login');
    }
  }
}
