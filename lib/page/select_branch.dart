import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectBranch extends StatelessWidget {
  const SelectBranch({Key? key}) : super(key: key);

  final Color jingga = const Color.fromRGBO(217, 134, 57, 1);
  final Color gelap = const Color.fromRGBO(30, 31, 39, 1);
  final Color abu = const Color.fromRGBO(196, 196, 196, 1);
  final Color abusedang = const Color.fromRGBO(90, 90, 92, 1);
  final Color abutebel = const Color.fromRGBO(141, 141, 143, 1);

  final Color abugelap = const Color.fromRGBO(72, 71, 71, 1);
  final Color kuning = const Color.fromRGBO(241, 222, 48, 1);
  final Color putih = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gelap,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   toolbarHeight: 40,
      //   elevation: 0,
      //   centerTitle: false,
      //   title: Text(
      //     'Select Branch',
      //     style: GoogleFonts.poppins(
      //       color: putih,
      //       letterSpacing: 1,
      //       fontSize: 16,
      //       textStyle: Theme.of(context).textTheme.labelMedium,
      //     ),
      //   ),
      //   leading: const Icon(CupertinoIcons.back),
      // ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 330,
                height: 48,
              ),
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
                      child: TextField(
                        keyboardType: TextInputType.text,
                        cursorColor: abutebel,
                        style: GoogleFonts.poppins(
                          color: abutebel,
                          fontSize: 13,
                          textStyle: Theme.of(context).textTheme.labelMedium,
                        ),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Select Malls Or Branch',
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
              const SizedBox(
                height: 20,
              ),
              Text(
                'Nearby',
                style: GoogleFonts.poppins(
                  color: putih,
                  fontSize: 16,
                  textStyle: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                height: 113.0,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: abusedang,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 113.0,
                      width: 113,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const NetworkImage(
                            "https://picsum.photos/2000",
                          ),
                          filterQuality: FilterQuality.high,
                          repeat: ImageRepeat.noRepeat,
                          onError: (exception, stackTrace) =>
                              const CircularProgressIndicator.adaptive(),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            10.0,
                          ),
                          bottomLeft: Radius.circular(
                            10.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Pondok Indah Mall',
                                style: GoogleFonts.poppins(
                                  letterSpacing: 1,
                                  color: putih,
                                  fontSize: 13,
                                  textStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                              const SizedBox(
                                width: 59,
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                color: kuning,
                                size: 13,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                '4.9',
                                style: GoogleFonts.poppins(
                                  letterSpacing: 1,
                                  color: putih,
                                  fontSize: 13,
                                  textStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 139),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        CupertinoIcons.ticket,
                                        color: putih,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'PHP 279',
                                        style: GoogleFonts.poppins(
                                          letterSpacing: 1,
                                          color: putih,
                                          fontSize: 10,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.chair,
                                        color: putih,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '6 Cinemas',
                                        style: GoogleFonts.poppins(
                                          letterSpacing: 1,
                                          color: putih,
                                          fontSize: 10,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Suggested ',
                style: GoogleFonts.poppins(
                  color: putih,
                  fontSize: 16,
                  textStyle: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                height: 113.0,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: abusedang,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 113.0,
                      width: 113,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const NetworkImage(
                            "https://picsum.photos/2000",
                          ),
                          filterQuality: FilterQuality.high,
                          repeat: ImageRepeat.noRepeat,
                          onError: (exception, stackTrace) =>
                              const CircularProgressIndicator.adaptive(),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            10.0,
                          ),
                          bottomLeft: Radius.circular(
                            10.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Pondok Indah Mall',
                                style: GoogleFonts.poppins(
                                  letterSpacing: 1,
                                  color: putih,
                                  fontSize: 13,
                                  textStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                              const SizedBox(
                                width: 59,
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                color: kuning,
                                size: 13,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                '4.9',
                                style: GoogleFonts.poppins(
                                  letterSpacing: 1,
                                  color: putih,
                                  fontSize: 13,
                                  textStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 139),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        CupertinoIcons.ticket,
                                        color: putih,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'PHP 279',
                                        style: GoogleFonts.poppins(
                                          letterSpacing: 1,
                                          color: putih,
                                          fontSize: 10,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.chair,
                                        color: putih,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '6 Cinemas',
                                        style: GoogleFonts.poppins(
                                          letterSpacing: 1,
                                          color: putih,
                                          fontSize: 10,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                height: 113.0,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: abusedang,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 113.0,
                      width: 113,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const NetworkImage(
                            "https://picsum.photos/2000",
                          ),
                          filterQuality: FilterQuality.high,
                          repeat: ImageRepeat.noRepeat,
                          onError: (exception, stackTrace) =>
                              const CircularProgressIndicator.adaptive(),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            10.0,
                          ),
                          bottomLeft: Radius.circular(
                            10.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Pondok Indah Mall',
                                style: GoogleFonts.poppins(
                                  letterSpacing: 1,
                                  color: putih,
                                  fontSize: 13,
                                  textStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                              const SizedBox(
                                width: 59,
                              ),
                              Icon(
                                CupertinoIcons.star_fill,
                                color: kuning,
                                size: 13,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                '4.9',
                                style: GoogleFonts.poppins(
                                  letterSpacing: 1,
                                  color: putih,
                                  fontSize: 13,
                                  textStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 139),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        CupertinoIcons.ticket,
                                        color: putih,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'PHP 279',
                                        style: GoogleFonts.poppins(
                                          letterSpacing: 1,
                                          color: putih,
                                          fontSize: 10,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.chair,
                                        color: putih,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '6 Cinemas',
                                        style: GoogleFonts.poppins(
                                          letterSpacing: 1,
                                          color: putih,
                                          fontSize: 10,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
