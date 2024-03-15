import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextFormField(
        obscureText: true,
      ),
    );
  }
}