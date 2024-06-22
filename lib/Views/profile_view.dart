import 'dart:convert';

import 'package:ar_app/services/save_token.dart';
import 'package:ar_app/widgets/elevated_button_widget.dart';
// import 'package:ar_app/widgets/elevated_button_widget.dart';
import 'package:ar_app/widgets/profile_textfield.dart';
import 'package:checkout_screen_ui/checkout_ui.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../generated/l10n.dart';





class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
        padding: const EdgeInsets.only(top: 90),
        physics: const BouncingScrollPhysics(),
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xff0969A6),
                    radius: 67,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/user.jpg',
                      ),
                      radius: 65,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 35,
                      width: 35,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xff0969A6), ),
                      child: const Icon(Icons.edit),
                    ),
                  )
                ],
              ),
            ),
          ),
           ProfileTextFieldWidget(
            hintName: S.of(context).full_name,
            prefixIcon: Icons.person,
            labelName: 'menna', obsecuredText: false,
          ),
           ProfileTextFieldWidget(
            hintName: S.of(context).e_mail,
            prefixIcon: Icons.email,
            labelName: 'menna@gmail.com', obsecuredText: false,
          ),
           ProfileTextFieldWidget(
            hintName: S.of(context).Phone_number,
            prefixIcon: Icons.phone,
            labelName: '01024176346', obsecuredText: false,
          ),
           ProfileTextFieldWidget(
            hintName: S.of(context).Password,
            prefixIcon: Icons.password,
            labelName: '12345', obsecuredText: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left:60,right: 60 ),
            child: ElevatedButtonWidget(
                whatToDo: S.of(context).save, size: 18, onTapAction: () {}),
          )
        ],
      ),
    ));
  }
}
