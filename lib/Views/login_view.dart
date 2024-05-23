import 'package:ar_app/Views/sign_up_view.dart';
import 'package:ar_app/generated/l10n.dart';
import 'package:ar_app/widgets/elevated_button_widget.dart';
import 'package:ar_app/widgets/gradients.dart';
import 'package:ar_app/widgets/profile_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String id = "loginPage";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              )),
          const Positioned(
              right: 200,
              top: 90,
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              )),
          ListView(
            children: [
              const SizedBox(
                height: 270,
              ),
              ProfileTextFieldWidget(
                hintName: S.of(context).e_mail,
                prefixIcon: Icons.email,
                labelName: S.of(context).e_mail,
                obsecuredText: false,
              ),
              ProfileTextFieldWidget(
                hintName: S.of(context).Password,
                prefixIcon: Icons.password,
                labelName: S.of(context).Password,
                obsecuredText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 60, right: 60),
                child: ElevatedButtonWidget(
                    whatToDo: S.of(context).login,
                    size: 18,
                    onTapAction: () {}),
              ),
              const Text(
                "Don't have an account? ",
                style: TextStyle(color: Color(0xff0969A6)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUpPage.id);
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(color: Color(0xff0969A6)),
                ),
              )
            ],
          ),
          const Positioned(
              right: -120,
              bottom: -380,
              left: 150,
              top: 420,
              child: GradientCircleWidget(
                heightNum:600,
                widthtNum: 900,
              )),
        ],
      ),
    );
  }
}