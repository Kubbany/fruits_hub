import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.keyboardType,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
  });
  final String? hintText, labelText;
  final IconData? prefixIcon, suffixIcon;

  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hint: hintText != null
            ? Text(
                hintText!,
                style: TextStyles.bold13.copyWith(
                  color: const Color(0xFF949D9E),
                ),
              )
            : null,
        label: labelText != null
            ? Text(
                labelText!,
                style: TextStyles.bold13.copyWith(
                  color: const Color(0xFF949D9E),
                ),
              )
            : null,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xFFE6E9E9),
      ),
    );
  }
}
