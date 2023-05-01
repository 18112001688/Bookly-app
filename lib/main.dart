import 'package:bookly_app/Features/constant.dart';
import 'package:bookly_app/core/utlity/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          )),
    );
  }
}
