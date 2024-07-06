import 'dart:ui';

import 'package:blog_app_clean_arch/core/theme/color_pallete.dart';
import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton(
      {super.key, required this.onPress, required this.buttonTxt});

  final void Function() onPress;
  final String buttonTxt;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              AppPalette.gradient1,
              AppPalette.gradient2,
            ],
          ),
        ),
        child: Center(
          child: Text(
            buttonTxt,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
