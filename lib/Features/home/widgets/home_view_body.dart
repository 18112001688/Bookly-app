import 'package:bookly_app/Features/home/widgets/coustem_app_bar.dart';
import 'package:bookly_app/Features/home/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CoustemAppBar(), FeaturedBooksListView()],
    );
  }
}
