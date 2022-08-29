import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/global_colors.dart';
import '../../cubit/multi_search/multi_search_cubit.dart';
import '../../data/model/multi_search_result.dart';
import '../widget/common/loading_indicator.dart';
import '../widget/multi_search/multi_search_tile.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = '/search_screen';
  final String searchQuery;
  SearchScreen({Key? key, required this.searchQuery}) : super(key: key);

  final scrollController = ScrollController();

  void setupScrollController(context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          BlocProvider.of<MultiSearchCubit>(context).loadMultiSearch('', searchQuery, '', '');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    BlocProvider.of<MultiSearchCubit>(context).loadMultiSearch('', searchQuery, '', '');

    return Scaffold(
      backgroundColor: GlobalColors.gelap,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(
              width: 330,
              height: 48,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              width: double.maxFinite,
              height: 48,
              decoration: const BoxDecoration(
                color: GlobalColors.abusedang,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    25.0,
                  ),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.search,
                    color: GlobalColors.abutebel,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFormField(
                      onFieldSubmitted: (String value) {
                        // navigateToSearchScreen(context, value);
                      },
                      initialValue:searchQuery,
                      keyboardType: TextInputType.text,
                      cursorColor: GlobalColors.abutebel,
                      style: GoogleFonts.poppins(
                        color: GlobalColors.abutebel,
                        fontSize: 13,
                        textStyle: Theme.of(context).textTheme.labelMedium,
                      ),
                      decoration: const InputDecoration.collapsed(
                          hintText: 'Search Movies',
                          hintStyle: TextStyle(
                            fontSize: 13,
                            color: GlobalColors.abutebel,
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(
                    CupertinoIcons.slider_horizontal_3,
                    color: GlobalColors.abutebel,
                    size: 20,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: _movieTrendGridList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _movieTrendGridList() {
    return BlocBuilder<MultiSearchCubit, MultiSearchState>(
      builder: ((context, state) {
        if (state is MultiSearchLoading && state.isFirstFetch) {
          return loadingIndicator();
        }

        List<MultiSearchResult> data = [];
        bool isLoading = false;

        if (state is MultiSearchLoading) {
          data = state.oldMultiSearch;
          // log('Screen Trend Loading');
          // print(movieTrend);
          isLoading = true;
        } else if (state is MultiSearchLoaded) {
          // log('Screen Trend Loaded');
          data = state.multiSearch;
        }
        return GridView.builder(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(
            left: 5,
          ),
          itemCount: data.length + (isLoading ? 1 : 0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.675,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            if (index < data.length) {
              return multiSearchTile(
                context,
                data[index],
                MediaQuery.of(context).size.height / 3.9,
                MediaQuery.of(context).size.width / 4,
              );
            } else {
              Timer(const Duration(milliseconds: 30), () {
                scrollController
                    .jumpTo(scrollController.position.maxScrollExtent);
              });
              return loadingIndicator();
            }
          },
        );

      }),
    );
  }
}
