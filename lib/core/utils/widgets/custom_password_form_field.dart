import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/text_form_field_style.dart';

class CustomPasswordFormField extends StatefulWidget {
  const CustomPasswordFormField({super.key, required this.hintText});
  final String hintText;

  @override
  State<CustomPasswordFormField> createState() => _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool isVisiblePassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isVisiblePassword,
      decoration: InputDecoration(
        hint: Text(
          widget.hintText,
          style: TextFormFieldStyle.hintStyle,
        ),
        filled: TextFormFieldStyle.filled,
        fillColor: TextFormFieldStyle.fillColor,
        border: TextFormFieldStyle.buildBorder(),
        enabledBorder: TextFormFieldStyle.buildBorder(),
        focusedBorder: TextFormFieldStyle.buildBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            !isVisiblePassword ? Icons.visibility : Icons.visibility_off,
            color: TextFormFieldStyle.iconsColor,
          ),
          onPressed: () {
            isVisiblePassword = !isVisiblePassword;
            setState(
              () {},
            );
          },
        ),
      ),
    );
  }
}
