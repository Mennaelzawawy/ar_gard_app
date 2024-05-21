import 'package:ar_app/widgets/elevated_button_widget.dart';
import 'package:ar_app/widgets/profile_textfield.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
      padding:  const EdgeInsets.all(15),
      child: Column(
        children:  [
          const ProfileTextFieldWidget(
            hintName: "Full Name",
            prefixIcon: Icons.person,
            labelName: 'Full Name',
          ),
          const ProfileTextFieldWidget(
            hintName: "E-Mail",
            prefixIcon: Icons.email,
            labelName: 'E-Mail',
          ),
          const ProfileTextFieldWidget(
            hintName: "Phone number",
            prefixIcon: Icons.phone,
            labelName: 'Phone number',
          ),
          const ProfileTextFieldWidget(
            hintName: "Password",
            prefixIcon: Icons.password,
            labelName: 'Password',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButtonWidget(whatToDo: "Save",size: 18, onTapAction:(){}),
          )
        ],
      ),
    ));
  }
}
