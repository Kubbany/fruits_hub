import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 18,
      children: <Widget>[
        Expanded(
          child: Divider(color: Color(0xFFDCDEDE)),
        ),
        Text(
          'أو',
          textAlign: TextAlign.center,
          style: TextStyles.semiBold16,
        ),
        Expanded(
          child: Divider(color: Color(0xFFDCDEDE)),
        ),
      ],
    );
  }
}
