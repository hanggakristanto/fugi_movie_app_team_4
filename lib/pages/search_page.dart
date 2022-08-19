import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf0000330),
      appBar: AppBar(
        title: Text(
          "Selech Branch",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
            textStyle: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        backgroundColor: Color(0xf0000330),
      ),
      body: ListView(padding: EdgeInsets.all(20), children: [
        TextField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 0, style: BorderStyle.none, color: Colors.black),
                borderRadius: BorderRadius.circular(20)),
            filled: true,
            hoverColor: Colors.black,
            fillColor: Colors.grey,
            labelText: " Search Malls or Branch",
            prefixIcon: Icon(Icons.search),
            suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.list)),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelStyle: TextStyle(color: Colors.grey[700]),
          ),
        ),
        SizedBox(height: 30),
        Text(
          "Nearby",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 23,
            textStyle: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        SizedBox(height: 30),
        Material(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 130,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://cdn1-production-images-kly.akamaized.net/ByfoNPSMTMfPEtHmnQMFhgGP80Y=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3635478/original/025116000_1637133546-253154135_2120128131476179_3401639978712735642_n.jpg"))),
                          width: 130,
                          height: 150,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "SM City Marikina",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Icon(Icons.terminal, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  "PHP 279",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.bed, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  "6 Cinemas",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 13),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                              "4.9",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        SizedBox(height: 30),
        Text(
          "Suggested",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 23,
            textStyle: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        SizedBox(height: 30),
        Material(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 130,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://cdn1-production-images-kly.akamaized.net/ByfoNPSMTMfPEtHmnQMFhgGP80Y=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3635478/original/025116000_1637133546-253154135_2120128131476179_3401639978712735642_n.jpg"))),
                          width: 130,
                          height: 150,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "SM City Marikina",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Icon(Icons.terminal, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  "PHP 279",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.bed, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  "6 Cinemas",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 13),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                              "4.9",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        SizedBox(height: 30),
        Material(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 130,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://cdn1-production-images-kly.akamaized.net/ByfoNPSMTMfPEtHmnQMFhgGP80Y=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3635478/original/025116000_1637133546-253154135_2120128131476179_3401639978712735642_n.jpg"))),
                          width: 130,
                          height: 150,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "SM City Marikina",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Icon(Icons.terminal, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  "PHP 279",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.bed, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  "6 Cinemas",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 13),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                              "4.9",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        SizedBox(height: 30),
        Material(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 130,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://cdn1-production-images-kly.akamaized.net/ByfoNPSMTMfPEtHmnQMFhgGP80Y=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3635478/original/025116000_1637133546-253154135_2120128131476179_3401639978712735642_n.jpg"))),
                          width: 130,
                          height: 150,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "SM City Marikina",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Icon(Icons.terminal, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  "PHP 279",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.bed, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  "6 Cinemas",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textStyle:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 13),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                              "4.9",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                textStyle:
                                    Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ]),
    );
  }
}
