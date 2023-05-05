import 'package:bookly_app/Features/home/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/widgets/book_similar_list_view.dart';
import 'package:bookly_app/Features/home/widgets/books_action.dart';
import 'package:bookly_app/Features/home/widgets/cuostem_book_item.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'coustem_book_deatails_app_bar.dart';

class BookViewDeatailsBody extends StatelessWidget {
  const BookViewDeatailsBody({super.key});
  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CoustemBookDeatailAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustemBookImage(),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            'The jungle Book',
            style: Styles.styleText30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudard kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BooksAction(),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.styleText14.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimillarBooksListView(),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
