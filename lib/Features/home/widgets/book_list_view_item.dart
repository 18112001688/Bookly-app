import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/widgets/cuostem_book_item.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetailsView');
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 125,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CustemBookImage(
                  image: bookModel.volumeInfo?.imageLinks?.thumbnail ??
                      'no thumnail found',
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          bookModel.volumeInfo!.title!,
                          style: Styles.styleText20,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        bookModel.volumeInfo!.authors![0],
                        style: Styles.styleText14,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Free',
                            style: Styles.styleText20,
                          ),
                          BookRating(
                            mainAxisAlignment: MainAxisAlignment.center,
                            rating: bookModel.volumeInfo?.averageRating ?? 0.0,
                            count: bookModel.volumeInfo?.ratingsCount ?? 0,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
