import 'package:ar_app/generated/l10n.dart';
import 'package:ar_app/widgets/elevated_button_widget.dart';
import 'package:ar_app/widgets/gradients.dart';
import 'package:ar_app/widgets/profile_textfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static String id = "SignUpPage";

  @override
  State<SignUpPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Positioned(
            right: -50,
            top: -320,
            left: -150,
            child: GradientCircleWidget(
              heightNum: 550,
              widthtNum: 650,
            )),
        const Positioned(
            right: 180,
            top: 90,
            child: Text(
              "Sign up",
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
              hintName: S.of(context).full_name,
              prefixIcon: Icons.person,
              labelName: S.of(context).full_name,
              obsecuredText: false,
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
                  whatToDo: S.of(context).signup, size: 18, onTapAction: () {}),
            ),
            const Text(
              "Already have an account? ",
              style: TextStyle(color: Color(0xff0969A6)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Log in",
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
              heightNum: 600,
              widthtNum: 900,
            )),
      ]),
    );
  }
}