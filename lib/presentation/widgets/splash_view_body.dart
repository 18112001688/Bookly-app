import 'package:bookly_app/core/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.bookLover,
          height: 200,
          width: 200,
        ),
        Image.asset(
          AssetsData.booklyImage,
          height: 100,
          width: 100,
        ),
      ],
    );
  }
}
