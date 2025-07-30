import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

abstract class TextFormFieldStyle {
  static final TextStyle hintStyle = TextStyles.bold13.copyWith(color: const Color(0xFF949D9E));
  static const bool filled = true;
  static const fillColor = Color(0xFFF9FAFA);
  static const iconsColor = Color(0xFFC9CECF);
  static OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xFFE6E9E9),
      ),
    );
  }
}
