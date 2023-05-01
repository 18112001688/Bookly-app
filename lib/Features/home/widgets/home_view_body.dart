import 'package:bookly_app/Features/home/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/widgets/coustem_app_bar.dart';
import 'package:bookly_app/Features/home/widgets/featured_books_list_view.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: CoustemAppBar(),
          ),
          FeaturedBooksListView(),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      )),
      const SliverToBoxAdapter(
        child: BestSellerListView(),
      ),
    ]);
  }
}
