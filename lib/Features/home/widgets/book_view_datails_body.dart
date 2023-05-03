import 'package:bookly_app/Features/home/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/widgets/cuostem_book_item.dart';
import 'package:bookly_app/core/styles.dart';
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
        ],
      ),
    );
  }
}
