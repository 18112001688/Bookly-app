import 'package:flutter/material.dart';

class CustomLoadingIndcaitor extends StatelessWidget {
  const CustomLoadingIndcaitor({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
