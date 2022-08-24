import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xf0000330),
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 450,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken),
                  fit: BoxFit.cover,
                  image: const NetworkImage("https://picsum.photos/1222")),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Stack(children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 45),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    icon: const Icon(Icons.card_membership_sharp),
                    label: Text("Get Tickets",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          textStyle: Theme.of(context).textTheme.labelMedium,
                        ))),
              ),
            ),
            Center(
                child: CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: IconButton(
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ))),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[700]),
                      child: Text(
                        "13+",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13,
                          textStyle: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[700]),
                      child: Text(
                        "Action",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13,
                          textStyle: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[700]),
                      child: Text(
                        "IMAX",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13,
                          textStyle: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[700]),
                      child: Text(
                        "2 Trailers",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13,
                          textStyle: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.watch_later_outlined, color: Colors.white),
                  const SizedBox(width: 5),
                  Text(
                    "2h 13m",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 13,
                      textStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "Spider-Man: No Way Home",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                textStyle: Theme.of(context).textTheme.labelMedium,
              ),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text:
                    "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it... ",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 13,
                  textStyle: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              TextSpan(
                text: "More",
                style: GoogleFonts.poppins(
                  color: Colors.orange,
                  fontSize: 15,
                  textStyle: Theme.of(context).textTheme.labelMedium,
                ),
              )
            ]))),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "10.4K Comments",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
                textStyle: Theme.of(context).textTheme.labelMedium,
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(children: const [
            CircleAvatar(child: Text("KC")),
            SizedBox(width: 20),
            Expanded(
                child: TextField(
              autocorrect: false,
              enableSuggestions: false,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  labelText: "Add an Comment",
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))),
            ))
          ]),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(children: [
            const CircleAvatar(child: Text("AG")),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Andrew Garfield",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                        textStyle: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "2w",
                      style: GoogleFonts.poppins(
                        color: Colors.grey[400],
                        fontSize: 12,
                        textStyle: Theme.of(context).textTheme.labelMedium,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 300,
                  child: Text(
                    "This Trailer Looks Dope! So Excited to see this!",
                    style: GoogleFonts.poppins(
                      color: Colors.grey[400],
                      fontSize: 12,
                      textStyle: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
        const SizedBox(height: 20),
      ]),
    );
  }
}
