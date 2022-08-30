import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fugi_movie_app_team_4/presentation/screens/search_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/global_colors.dart';
import '../widget/common/text_header.dart';
import '../widget/home/movie_trend_horizontal.dart';
import 'movie_trend_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  final Color jingga = const Color.fromRGBO(217, 134, 57, 1);
  final Color gelap = const Color.fromRGBO(30, 31, 39, 1);
  final Color abu = const Color.fromRGBO(196, 196, 196, 1);
  final Color abusedang = const Color.fromRGBO(90, 90, 92, 1);
  final Color abutebel = const Color.fromRGBO(141, 141, 143, 1);

  final Color abugelap = const Color.fromRGBO(72, 71, 71, 1);
  final Color kuning = const Color.fromRGBO(241, 222, 48, 1);
  final Color putih = Colors.white;

  void navigateToMovieScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      MovieTrendScreen.routeName,
    );
  }

  void navigateToSearchScreen(BuildContext context, String query) {
    Navigator.pushNamed(
      context,
      SearchScreen.routeName,
      arguments: query,
      // arguments: {
      //   'query' : query, 
      //   'restart' : false
      // }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gelap,
      appBar: AppBar(
        backgroundColor: GlobalColors.gelap,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            scrollDirection: Axis.vertical,
            children: [
              // const SizedBox(
              //   width: 330,
              //   height: 48,
              // ),
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                width: double.maxFinite,
                height: 48,
                decoration: BoxDecoration(
                  color: abusedang,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      25.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: abutebel,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: TextFormField(
                        onFieldSubmitted: (String value) {
                          navigateToSearchScreen(context, value);
                        },
                        keyboardType: TextInputType.text,
                        cursorColor: abutebel,
                        style: GoogleFonts.poppins(
                          color: abutebel,
                          fontSize: 13,
                          textStyle: Theme.of(context).textTheme.labelMedium,
                        ),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Search Movies',
                            hintStyle: TextStyle(
                              fontSize: 13,
                              color: abutebel,
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Icon(
                      CupertinoIcons.slider_horizontal_3,
                      color: abutebel,
                      size: 20,
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              // TextHeader(
              //   text: 'Nearby',
              //   onTap: (() {

              //   }),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   padding: const EdgeInsets.only(
              //     right: 16,
              //   ),
              //   height: 113.0,
              //   width: double.maxFinite,
              //   decoration: BoxDecoration(
              //     color: abusedang,
              //     borderRadius: const BorderRadius.all(
              //       Radius.circular(
              //         10.0,
              //       ),
              //     ),
              //   ),
              //   child: Stack(
              //     children: [
              //       Container(
              //         height: 113.0,
              //         width: 113,
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //             image: const NetworkImage(
              //               "https://picsum.photos/2116",
              //             ),
              //             filterQuality: FilterQuality.high,
              //             repeat: ImageRepeat.noRepeat,
              //             onError: (exception, stackTrace) =>
              //                 const CircularProgressIndicator.adaptive(),
              //             fit: BoxFit.cover,
              //           ),
              //           borderRadius: const BorderRadius.only(
              //             topLeft: Radius.circular(
              //               10.0,
              //             ),
              //             bottomLeft: Radius.circular(
              //               10.0,
              //             ),
              //           ),
              //         ),
              //       ),
              //       Positioned(
              //         left: 120,
              //         child: Padding(
              //           padding: const EdgeInsets.all(10),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Row(
              //                 children: [
              //                   Text(
              //                     'Bintaro Plaza',
              //                     style: GoogleFonts.poppins(
              //                       letterSpacing: 1,
              //                       color: putih,
              //                       fontSize: 13,
              //                       textStyle: Theme.of(context)
              //                           .textTheme
              //                           .labelMedium,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               const SizedBox(
              //                 height: 18,
              //               ),
              //               Row(
              //                 children: [
              //                   Icon(
              //                     CupertinoIcons.ticket,
              //                     color: putih,
              //                     size: 20,
              //                   ),
              //                   const SizedBox(
              //                     width: 10,
              //                   ),
              //                   Text(
              //                     'PHP 279',
              //                     style: GoogleFonts.poppins(
              //                       letterSpacing: 1,
              //                       color: putih,
              //                       fontSize: 10,
              //                       textStyle: Theme.of(context)
              //                           .textTheme
              //                           .labelMedium,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               const SizedBox(
              //                 height: 8,
              //               ),
              //               Row(
              //                 children: [
              //                   Icon(
              //                     Icons.chair,
              //                     color: putih,
              //                     size: 20,
              //                   ),
              //                   const SizedBox(
              //                     width: 10,
              //                   ),
              //                   Text(
              //                     '6 Cinemas',
              //                     style: GoogleFonts.poppins(
              //                       letterSpacing: 1,
              //                       color: putih,
              //                       fontSize: 10,
              //                       textStyle: Theme.of(context)
              //                           .textTheme
              //                           .labelMedium,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Positioned(
              //         left: 300,
              //         top: 10,
              //         child: Row(
              //           children: [
              //             Icon(
              //               CupertinoIcons.star_fill,
              //               color: kuning,
              //               size: 13,
              //             ),
              //             const SizedBox(
              //               width: 2,
              //             ),
              //             Text(
              //               '4.9',
              //               style: GoogleFonts.poppins(
              //                 letterSpacing: 1,
              //                 color: putih,
              //                 fontSize: 13,
              //                 textStyle:
              //                     Theme.of(context).textTheme.labelMedium,
              //               ),
              //             ),
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // TextHeader(
              //   text: 'Suggested',
              //   onTap: (() {

              //   }),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   padding: const EdgeInsets.only(
              //     right: 16,
              //   ),
              //   height: 113.0,
              //   width: double.maxFinite,
              //   decoration: BoxDecoration(
              //     color: abusedang,
              //     borderRadius: const BorderRadius.all(
              //       Radius.circular(
              //         10.0,
              //       ),
              //     ),
              //   ),
              //   child: Stack(
              //     children: [
              //       Container(
              //         height: 113.0,
              //         width: 113,
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //             image: const NetworkImage(
              //               "https://picsum.photos/2316",
              //             ),
              //             filterQuality: FilterQuality.high,
              //             repeat: ImageRepeat.noRepeat,
              //             onError: (exception, stackTrace) =>
              //                 const CircularProgressIndicator.adaptive(),
              //             fit: BoxFit.cover,
              //           ),
              //           borderRadius: const BorderRadius.only(
              //             topLeft: Radius.circular(
              //               10.0,
              //             ),
              //             bottomLeft: Radius.circular(
              //               10.0,
              //             ),
              //           ),
              //         ),
              //       ),
              //       Positioned(
              //         left: 120,
              //         child: Padding(
              //           padding: const EdgeInsets.all(10),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Row(
              //                 children: [
              //                   Text(
              //                     'Bintaro Plaza',
              //                     style: GoogleFonts.poppins(
              //                       letterSpacing: 1,
              //                       color: putih,
              //                       fontSize: 13,
              //                       textStyle: Theme.of(context)
              //                           .textTheme
              //                           .labelMedium,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               const SizedBox(
              //                 height: 18,
              //               ),
              //               Row(
              //                 children: [
              //                   Icon(
              //                     CupertinoIcons.ticket,
              //                     color: putih,
              //                     size: 20,
              //                   ),
              //                   const SizedBox(
              //                     width: 10,
              //                   ),
              //                   Text(
              //                     'PHP 279',
              //                     style: GoogleFonts.poppins(
              //                       letterSpacing: 1,
              //                       color: putih,
              //                       fontSize: 10,
              //                       textStyle: Theme.of(context)
              //                           .textTheme
              //                           .labelMedium,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               const SizedBox(
              //                 height: 8,
              //               ),
              //               Row(
              //                 children: [
              //                   Icon(
              //                     Icons.chair,
              //                     color: putih,
              //                     size: 20,
              //                   ),
              //                   const SizedBox(
              //                     width: 10,
              //                   ),
              //                   Text(
              //                     '6 Cinemas',
              //                     style: GoogleFonts.poppins(
              //                       letterSpacing: 1,
              //                       color: putih,
              //                       fontSize: 10,
              //                       textStyle: Theme.of(context)
              //                           .textTheme
              //                           .labelMedium,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Positioned(
              //         left: 300,
              //         top: 10,
              //         child: Row(
              //           children: [
              //             Icon(
              //               CupertinoIcons.star_fill,
              //               color: kuning,
              //               size: 13,
              //             ),
              //             const SizedBox(
              //               width: 2,
              //             ),
              //             Text(
              //               '4.9',
              //               style: GoogleFonts.poppins(
              //                 letterSpacing: 1,
              //                 color: putih,
              //                 fontSize: 13,
              //                 textStyle:
              //                     Theme.of(context).textTheme.labelMedium,
              //               ),
              //             ),
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   padding: const EdgeInsets.only(
              //     right: 16,
              //   ),
              //   height: 113.0,
              //   width: double.maxFinite,
              //   decoration: BoxDecoration(
              //     color: abusedang,
              //     borderRadius: const BorderRadius.all(
              //       Radius.circular(
              //         10.0,
              //       ),
              //     ),
              //   ),
              //   child: Stack(
              //     children: [
              //       Container(
              //         height: 113.0,
              //         width: 113,
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //             image: const NetworkImage(
              //               "https://picsum.photos/2026",
              //             ),
              //             filterQuality: FilterQuality.high,
              //             repeat: ImageRepeat.noRepeat,
              //             onError: (exception, stackTrace) =>
              //                 const CircularProgressIndicator.adaptive(),
              //             fit: BoxFit.cover,
              //           ),
              //           borderRadius: const BorderRadius.only(
              //             topLeft: Radius.circular(
              //               10.0,
              //             ),
              //             bottomLeft: Radius.circular(
              //               10.0,
              //             ),
              //           ),
              //         ),
              //       ),
              //       Positioned(
              //         left: 120,
              //         child: Padding(
              //           padding: const EdgeInsets.all(10),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Row(
              //                 children: [
              //                   Text(
              //                     'Bintaro Plaza',
              //                     style: GoogleFonts.poppins(
              //                       letterSpacing: 1,
              //                       color: putih,
              //                       fontSize: 13,
              //                       textStyle: Theme.of(context)
              //                           .textTheme
              //                           .labelMedium,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               const SizedBox(
              //                 height: 18,
              //               ),
              //               Row(
              //                 children: [
              //                   Icon(
              //                     CupertinoIcons.ticket,
              //                     color: putih,
              //                     size: 20,
              //                   ),
              //                   const SizedBox(
              //                     width: 10,
              //                   ),
              //                   Text(
              //                     'PHP 279',
              //                     style: GoogleFonts.poppins(
              //                       letterSpacing: 1,
              //                       color: putih,
              //                       fontSize: 10,
              //                       textStyle: Theme.of(context)
              //                           .textTheme
              //                           .labelMedium,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               const SizedBox(
              //                 height: 8,
              //               ),
              //               Row(
              //                 children: [
              //                   Icon(
              //                     Icons.chair,
              //                     color: putih,
              //                     size: 20,
              //                   ),
              //                   const SizedBox(
              //                     width: 10,
              //                   ),
              //                   Text(
              //                     '6 Cinemas',
              //                     style: GoogleFonts.poppins(
              //                       letterSpacing: 1,
              //                       color: putih,
              //                       fontSize: 10,
              //                       textStyle: Theme.of(context)
              //                           .textTheme
              //                           .labelMedium,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Positioned(
              //         left: 300,
              //         top: 10,
              //         child: Row(
              //           children: [
              //             Icon(
              //               CupertinoIcons.star_fill,
              //               color: kuning,
              //               size: 13,
              //             ),
              //             const SizedBox(
              //               width: 2,
              //             ),
              //             Text(
              //               '4.9',
              //               style: GoogleFonts.poppins(
              //                 letterSpacing: 1,
              //                 color: putih,
              //                 fontSize: 13,
              //                 textStyle:
              //                     Theme.of(context).textTheme.labelMedium,
              //               ),
              //             ),
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),

              const SizedBox(
                height: 20,
              ),
              TextHeader(
                text: 'Trending',
                onTap: (() {
                  navigateToMovieScreen(context);
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                child: MovieTrendHorizontal(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width / 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
