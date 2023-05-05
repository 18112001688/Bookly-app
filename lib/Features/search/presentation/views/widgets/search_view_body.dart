import 'package:bookly_app/Features/home/widgets/book_list_view_item.dart';
import 'package:bookly_app/Features/home/widgets/search_result_list_view.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: const [
          CustomSearchTextField(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search Result',
                style: Styles.textStyle18,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultListview(),
          ),
        ],
      ),
    );
  }
}
