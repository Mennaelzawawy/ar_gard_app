import 'package:ar_app/services/save_token.dart';
import 'package:flutter/material.dart';
import 'package:ar_app/services/login.dart';
import 'package:ar_app/generated/l10n.dart';
import 'package:ar_app/widgets/elevated_button_widget.dart';
import 'package:ar_app/widgets/circle_gradient.dart';
import 'package:ar_app/widgets/profile_textfield.dart';
import 'package:ar_app/curved_navigation_bar.dart';
import 'package:ar_app/Views/sign_up_view.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String id = "loginPage";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LoginUser _loginUser = LoginUser();
  final storage = FlutterSecureStorage();

  Future<void> _login() async {
    final String email = _emailController.text;
    final String password = _passwordController.text;

    try {
      final loginModel = await _loginUser.addLoginInfo(email: email, password: password);
      // Save the token
      await saveToken(loginModel.token);
      // Navigate to the next screen if login is successful
      Navigator.pushNamed(context, CurvedNavigationBarWidget.id);
    } catch (error) {
      // Show error message if login fails
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Login Failed'),
            content: Text(error.toString()),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            right: -50,
            top: -320,
            left: -150,
            child: GradientCircleWidget(
              heightNum: 550,
              widthtNum: 650,
            ),
          ),
          const Positioned(
            right: 150,
            top: 90,
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          const Positioned(
            right: -120,
            bottom: -380,
            left: 150,
            top: 420,
            child: GradientCircleWidget(
              heightNum: 600,
              widthtNum: 900,
            ),
          ),
          ListView(
            children: [
              const SizedBox(
                height: 270,
              ),
              ProfileTextFieldWidget(
                hintName: S.of(context).e_mail,
                prefixIcon: Icons.email,
                labelName: S.of(context).e_mail,
                obsecuredText: false, fieldController: _emailController,
              ),
              ProfileTextFieldWidget(
                hintName: S.of(context).Password,
                prefixIcon: Icons.password,
                labelName: S.of(context).Password,
                obsecuredText: true, fieldController: _passwordController,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 60, right: 60),
                child: ElevatedButtonWidget(
                  whatToDo: S.of(context).login,
                  size: 18,
                  onTapAction: _login,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Color(0xff0969A6)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUpPage.id);
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Color(0xff0969A6)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
