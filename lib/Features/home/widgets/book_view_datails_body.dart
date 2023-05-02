import 'package:flutter/material.dart';

import 'coustem_book_deatails_app_bar.dart';

class BookViewDeatailsBody extends StatelessWidget {
  const BookViewDeatailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          CoustemBookDeatailAppBar(),
        ],
      ),
    );
  }
}
