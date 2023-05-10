import 'package:bookly_app/Features/home/widgets/book_view_datails_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookViewDeatailsBody()),
    );
  }
}
