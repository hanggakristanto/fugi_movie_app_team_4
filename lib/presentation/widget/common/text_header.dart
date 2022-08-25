import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fugi_movie_app_team_4/constant/global_colors.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textHeader(BuildContext context, String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      color: GlobalColors.putih,
      fontSize: 16,
      textStyle: Theme.of(context).textTheme.labelMedium,
    ),
  );
}
