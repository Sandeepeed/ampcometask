import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextWidget extends StatelessWidget {
  final Color color;
  final double fontSize;
  final String text;
  final bool isBold;
  final height;
  const TextWidget({Key? key, required this.color, required this.fontSize, required this.text, required this.isBold, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: TextAlign.start,

      style: GoogleFonts.ubuntu(
          color: color,
          height: height,
          fontSize: fontSize,
          fontWeight: isBold == true ? FontWeight.bold : FontWeight.normal),)
    ;
  }
}
