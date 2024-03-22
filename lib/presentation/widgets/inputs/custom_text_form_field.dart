import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).disabledColor;

    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: colors,
        width: 2
        ),
      borderRadius: BorderRadius.circular(15),
    );

    return Material(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        child: TextFormField(
          onChanged: (value) {
            print('value: $value');
          },
          decoration: InputDecoration(enabledBorder: border),
        ),
      ),
    );
  }
}
