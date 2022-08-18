// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:card_swiper/card_swiper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color jingga = const Color.fromRGBO(217, 134, 57, 1);
  final Color gelap = const Color.fromRGBO(30, 31, 39, 1);
  final Color abu = const Color.fromRGBO(196, 196, 196, 1);
  final Color abugelap = const Color.fromRGBO(72, 71, 71, 1);
  final Color kuning = const Color.fromRGBO(241, 222, 48, 1);
  final Color putih = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gelap,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'All Movies',
                    style: GoogleFonts.poppins(
                      color: jingga,
                      fontSize: 15,
                      textStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Text(
                    'For Kids',
                    style: GoogleFonts.poppins(
                      color: putih,
                      fontSize: 15,
                      textStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Text(
                          'My Tickets',
                          style: GoogleFonts.poppins(
                            color: putih,
                            fontSize: 15,
                            textStyle: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.red,
                              child: Center(
                                child: Text(
                                  '2',
                                  style: GoogleFonts.poppins(
                                    color: putih,
                                    fontSize: 8,
                                    textStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Coming Soon',
                style: GoogleFonts.poppins(
                  color: putih,
                  fontSize: 22,
                  textStyle: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 200,
                width: 330,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://picsum.photos/2000",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 22,
                    width: 50,
                    decoration: BoxDecoration(
                      color: jingga,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Action',
                        style: GoogleFonts.poppins(
                          color: putih,
                          fontSize: 13,
                          textStyle: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Comedy',
                    style: GoogleFonts.poppins(
                      color: putih,
                      fontSize: 13,
                      textStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Text(
                    'Romance',
                    style: GoogleFonts.poppins(
                      color: putih,
                      fontSize: 13,
                      textStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Text(
                    'Thriller',
                    style: GoogleFonts.poppins(
                      color: putih,
                      fontSize: 13,
                      textStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Text(
                    'Fantasy',
                    style: GoogleFonts.poppins(
                      color: putih,
                      fontSize: 13,
                      textStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Now Showing',
                style: GoogleFonts.poppins(
                  color: putih,
                  fontSize: 22,
                  textStyle: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Swiper(
                itemCount: 10,
                viewportFraction: 0.8,
                scale: 0.9,
                layout: SwiperLayout.STACK,
                customLayoutOption:
                    CustomLayoutOption(startIndex: -1, stateCount: 3)
                      ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
                      ..addTranslate([
                        const Offset(-370.0, -40.0),
                        const Offset(0.0, 0.0),
                        const Offset(370.0, -40.0)
                      ]),
                itemWidth: 178.0,
                itemHeight: 243.0,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://picsum.photos/2000",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  'Spider-Man: No Way Home',
                  style: GoogleFonts.poppins(
                    color: putih,
                    fontSize: 16,
                    textStyle: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 22,
                      width: 30,
                      decoration: BoxDecoration(
                        color: abugelap,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '13+',
                          style: GoogleFonts.poppins(
                            color: putih,
                            fontSize: 13,
                            textStyle: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 22,
                      width: 50,
                      decoration: BoxDecoration(
                        color: abugelap,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Action',
                          style: GoogleFonts.poppins(
                            color: putih,
                            fontSize: 13,
                            textStyle: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                        color: abugelap,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'IMAX',
                          style: GoogleFonts.poppins(
                            color: putih,
                            fontSize: 13,
                            textStyle: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
