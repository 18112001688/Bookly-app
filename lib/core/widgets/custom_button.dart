// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bookly_app/core/styles.dart';

class CoustemButton extends StatelessWidget {
  const CoustemButton({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    required this.borderRadius,
    required this.text,
  }) : super(key: key);

  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final BorderRadius borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: Styles.styleText16.copyWith(
            color: textColor,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
