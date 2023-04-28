import 'package:bookly_app/Features/home/widgets/coustem_app_bar.dart';
import 'package:bookly_app/Features/home/widgets/featured_books_list_view.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CoustemAppBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 35,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Best Seller',
            style: Styles.meduimText,
          ),
        )
      ],
    );
  }
}
