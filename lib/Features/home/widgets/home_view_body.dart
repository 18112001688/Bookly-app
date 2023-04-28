import 'package:bookly_app/Features/home/widgets/coustem_app_bar.dart';
import 'package:bookly_app/Features/home/widgets/featured_books_list_view.dart';
import 'package:bookly_app/core/assets.dart';
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
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    image: DecorationImage(
                        image: AssetImage(
                          (AssetsData.testImage),
                        ),
                        fit: BoxFit.fill)),
              ),
            ),
            Column(
              children: const [],
            )
          ],
        ),
      ),
    );
  }
}
