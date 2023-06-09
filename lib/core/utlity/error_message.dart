import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class CoustemErrorWidget extends StatelessWidget {
  const CoustemErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: Styles.textStyle18,
      ),
    );
  }
}
