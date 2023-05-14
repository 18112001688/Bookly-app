import 'package:bookly_app/Features/home/presentation/manger/newset_books/newset_books_cubit.dart';
import 'package:bookly_app/Features/home/widgets/book_list_view_item.dart';
import 'package:bookly_app/core/utlity/error_message.dart';
import 'package:bookly_app/core/widgets/coustem_circular_indacitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) => BookListViewItem(
                    bookModel: state.books[index],
                  ));
        } else if (state is NewsetBooksFailure) {
          return CoustemErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomLoadingIndcaitor();
        }
      },
    );
  }
}
