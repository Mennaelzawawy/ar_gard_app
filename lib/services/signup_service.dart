import 'package:ar_app/Models/signup_info.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignUpUser {
  Future<SignUpModel> signUp({
    required dynamic image,
    required String name,
    required String email,
    required String password,
    required String address,
  }) async {
    final response = await http.post(
      Uri.parse('https://a-eye-fj81.onrender.com/customers/signup/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'image': image,
        'name': name,
        'email': email,
        'password': password,
        'address': address,
      }),
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return SignUpModel.fromJson(data);
    } else {
      throw Exception('Failed to sign up');
    }
  }
}
