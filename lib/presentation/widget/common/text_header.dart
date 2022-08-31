import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/global_colors.dart';

class TextHeader extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const TextHeader({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color: GlobalColors.putih,
          fontSize: 16,
          textStyle: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }
}
// Widget textHeader(BuildContext context, String text) {
//   return Text(
//     text,
//     style: GoogleFonts.poppins(
//       color: GlobalColors.putih,
//       fontSize: 16,
//       textStyle: Theme.of(context).textTheme.labelMedium,
//     ),
//   );
// }
