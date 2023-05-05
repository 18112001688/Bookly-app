import 'package:bookly_app/Features/home/widgets/books_details_section.dart';
import 'package:bookly_app/Features/home/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'coustem_book_deatails_app_bar.dart';

class BookViewDeatailsBody extends StatelessWidget {
  const BookViewDeatailsBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                CoustemBookDeatailAppBar(),
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
