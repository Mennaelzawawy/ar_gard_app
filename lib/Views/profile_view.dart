import 'package:ar_app/widgets/profile_textfield.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ProfileTextFieldWidget(hintName: "profile", prefixIcon: Icons.percent_outlined)],);
  }
}