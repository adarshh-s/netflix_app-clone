import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/core/font.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: GoogleFonts.archivoBlack(fontSize: 30),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
          size: 30,
        ),
        kWidth,
        Container(
          width: 22,
          height: 25,
          color: Colors.green,
        ),
        kWidth
      ],
    );
  }
}
