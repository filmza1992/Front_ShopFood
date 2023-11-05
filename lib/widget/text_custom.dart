import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCustom extends StatelessWidget {
  const TextCustom({
    Key? key,
    required this.text,
    required this.size,
    this.color,
    this.isBold = false,
    this.textAlign,
  });

  final String? text;
  final double size;
  final Color? color;
  final bool isBold;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.kanit(
        fontSize: size,
        color: color ?? Colors.black,
        fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
      ),
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
