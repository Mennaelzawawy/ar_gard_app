import 'package:ar_app/Views/login_view.dart';
import 'package:ar_app/services/signup_service.dart';
import 'package:flutter/material.dart';
import 'package:ar_app/generated/l10n.dart';
import 'package:ar_app/widgets/elevated_button_widget.dart';
import 'package:ar_app/widgets/circle_gradient.dart';
import 'package:ar_app/widgets/profile_textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static String id = "SignUpPage";

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final SignUpUser _signUpUser = SignUpUser();

  Future<void> _signUp() async {
    final String name = _nameController.text;
    final String email = _emailController.text;
    final String password = _passwordController.text;
    final String address = _addressController.text;

    try {
      final signUpModel = await _signUpUser.signUp(
        image: '', // Replace with your image data or null if not needed
        name: name,
        email: email,
        password: password,
        address: address,
      );

      // Example of handling successful signup
      print('Signed up successfully: ${signUpModel.name}');
      // Navigate to login page after successful signup
      Navigator.pushNamed(context, LoginPage.id);
    } catch (error) {
      print('Error during signup: $error');
      // Show error message if signup fails
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Signup Failed'),
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
          Positioned(
            right: -50,
            top: -320,
            left: -150,
            child: GradientCircleWidget(
              heightNum: 550,
              widthtNum: 650,
            ),
          ),
          Positioned(
            right: 130,
            top: 90,
            child: Text(
              "Sign up",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          Positioned(
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
              SizedBox(height: 250),
              ProfileTextFieldWidget(
                fieldController: _nameController,
                hintName: S.of(context).full_name,
                prefixIcon: Icons.person,
                labelName: S.of(context).full_name,
                obsecuredText: false,
              ),
              ProfileTextFieldWidget(
                fieldController: _emailController,
                hintName: S.of(context).e_mail,
                prefixIcon: Icons.email,
                labelName: S.of(context).e_mail,
                obsecuredText: false,
              ),
              ProfileTextFieldWidget(
                fieldController: _addressController,
                hintName: S.of(context).address,
                prefixIcon: Icons.home,
                labelName: S.of(context).address,
                obsecuredText: false,
              ),
              ProfileTextFieldWidget(
                fieldController: _passwordController,
                hintName: S.of(context).Password,
                prefixIcon: Icons.password,
                labelName: S.of(context).Password,
                obsecuredText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 60, right: 60),
                child: ElevatedButtonWidget(
                  whatToDo: S.of(context).signup,
                  size: 18,
                  onTapAction: _signUp,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Already have an account? ",
                  style: TextStyle(color: Color(0xff0969A6)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Go back to the previous screen
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "Log in",
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
