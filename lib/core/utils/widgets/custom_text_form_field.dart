import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/text_form_field_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText, this.keyboardType});
  final String hintText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hint: Text(
          hintText,
          style: TextFormFieldStyle.hintStyle,
        ),
        filled: TextFormFieldStyle.filled,
        fillColor: TextFormFieldStyle.fillColor,
        border: TextFormFieldStyle.buildBorder(),
        enabledBorder: TextFormFieldStyle.buildBorder(),
        focusedBorder: TextFormFieldStyle.buildBorder(),
        disabledBorder: TextFormFieldStyle.buildBorder(),
        errorBorder: TextFormFieldStyle.buildBorder(),
        focusedErrorBorder: TextFormFieldStyle.buildBorder(),
      ),
    );
  }
}
