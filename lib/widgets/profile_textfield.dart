import 'package:flutter/material.dart';

class ProfileTextFieldWidget extends StatefulWidget {
  const ProfileTextFieldWidget(
      {super.key, required this.hintName, required this.prefixIcon});
  final String hintName;
  final IconData prefixIcon;

  @override
  State<ProfileTextFieldWidget> createState() => _ProfileTextFieldWidgetState();
}

class _ProfileTextFieldWidgetState extends State<ProfileTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: const BorderSide(
                color: Color(0xffFFB000),
              )),
          hintText: widget.hintName,
          hintMaxLines: 2,
          prefixIcon: Icon(widget.prefixIcon),
          prefixIconColor: MaterialStateColor.resolveWith((states) =>
              states.contains(MaterialState.focused)
                  ? const Color(0xffFFB000)
                  : Colors.grey)),
    );
  }
}
