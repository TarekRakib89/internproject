import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_project/util/constant.dart';

TextStyle textStyleFontRoboto(double size) {
  return GoogleFonts.roboto(
    textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: size,
        color: AppColor.whiteColor),
  );
}

final fontRobotoWithGrey = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: AppColor.grayColor,
  ),
);
final fontRobotoWithBlue = GoogleFonts.roboto(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: AppColor.primaryColor,
  ),
);

final fontRegularBoldwithGreyColor = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontWeight: FontWeight.w500, fontSize: 16, color: AppColor.grayColor));
final greyColorSize12 = GoogleFonts.poppins(
  textStyle: const TextStyle(
      fontWeight: FontWeight.w500, fontSize: 12, color: AppColor.grayColor),
);

final fontsmallWithGreyColor = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColor.grayColor,
  ),
);

final fontMediumBold = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppColor.grayColor,
  ),
);
final fontBold = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColor.grayColor,
  ),
);

final fontSmall = GoogleFonts.poppins(
    textStyle: const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 10,
  color: Color(0xFF999999),
));
final fontSmallWithHeight4 = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    height: 4,
    color: AppColor.garyColor40,
  ),
);
final fontszie14 = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColor.primaryColor,
  ),
);
final geryFontszie14 = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColor.garyColor40,
  ),
);

ButtonStyle buttonStyle() {
  return ButtonStyle(
    side: const MaterialStatePropertyAll(
      BorderSide(width: 1, color: AppColor.primaryColor),
    ),
    backgroundColor:
        MaterialStatePropertyAll(AppColor.primaryColor.withOpacity(0.01)),
    minimumSize: const MaterialStatePropertyAll(
      Size(345, 50),
    ),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    ),
  );
}
