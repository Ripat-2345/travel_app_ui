import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// * Color theme
Color blackColor = const Color(0XFF222222);
Color greyColor = const Color(0XFFBEBFCA);
Color whiteColor = const Color(0XFFFFFFFF);
Color transparentColor = const Color(0xFFADB0B2);

// * Text theme
TextStyle mainTitle = GoogleFonts.mulish(
  color: blackColor,
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

TextStyle subTitle = GoogleFonts.mulish(
  color: blackColor,
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

TextStyle searchText = GoogleFonts.mulish(
  color: greyColor,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

TextStyle mainCardText = GoogleFonts.mulish(
  color: whiteColor,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

TextStyle subCardText = GoogleFonts.mulish(
  color: whiteColor,
  fontSize: 14,
  fontWeight: FontWeight.w600,
);

TextStyle categoriesText = GoogleFonts.mulish(
  color: blackColor,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);
