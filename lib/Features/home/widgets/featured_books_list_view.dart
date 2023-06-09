import 'package:bookly_app/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_books_cubit/featured_books_state.dart';
import 'package:bookly_app/Features/home/widgets/cuostem_book_item.dart';
import 'package:bookly_app/core/utlity/error_message.dart';
import 'package:bookly_app/core/widgets/coustem_circular_indacitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustemBookImage(
                image: state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                    'No thumbnail found',
              ),
            ),
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return CoustemErrorWidget(errorMessage: state.errorMessage);
      } else {
        return const CustomLoadingIndcaitor();
      }
    });
  }
}
