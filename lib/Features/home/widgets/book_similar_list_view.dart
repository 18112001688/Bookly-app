import 'package:bookly_app/Features/home/presentation/manger/simillar_books_cubit/simillar_books_cubit.dart';
import 'package:bookly_app/Features/home/widgets/cuostem_book_item.dart';
import 'package:bookly_app/core/utlity/error_message.dart';
import 'package:bookly_app/core/widgets/coustem_circular_indacitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimillarBooksListView extends StatelessWidget {
  const SimillarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillarBooksCubit, SimillarBooksState>(
      builder: (context, state) {
        if (state is SimillarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: CustemBookImage(
                  image:
                      'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80',
                ),
              ),
            ),
          );
        } else if (state is SimillarBooksFailure) {
          return CoustemErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndcaitor();
        }
      },
    );
  }
}
