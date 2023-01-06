part of 'shared.dart';

const double defaultMargin = 18.0;
const double defaultRadius = 18.0;

const Color kPrimaryColor = Color(0xff0C1015);
const Color kSecondaryColor = Color(0xffFFCB74);
const Color kPrimaryGreyColor = Color(0xff8F9CA9);
const Color kBlackColor = Color(0xff2F2F2F);
const Color kSearchColor = Color(0xff141921);
const Color kCardColor = Color(0xff232124);
const Color kWhiteColor = Color(0xffF7F7F7);
const Color kgreenColor = Color(0xff38C976);
const Color kredColor = Color(0xff800800);
const Color kTextColor = Color(0xffC0BEC1);
const Color kTextOrangeColor = Color(0xffD27842);

//D27842

TextStyle blackTextStyleInter = GoogleFonts.inter(
  color: kBlackColor,
);
TextStyle orangeTextStyleInter = GoogleFonts.inter(
  color: kBlackColor,
);
TextStyle greyTextStyleInter = GoogleFonts.inter(
  color: kPrimaryGreyColor,
);
TextStyle greyTextHeaderStyleInter = GoogleFonts.inter(
  color: const Color(0xff8F9CA9),
);
TextStyle whiteTextStyleInter = GoogleFonts.inter(
  color: kWhiteColor,
);
TextStyle greenTextStyleInter = GoogleFonts.inter(
  color: kgreenColor,
);
TextStyle redTextStyleInter = GoogleFonts.inter(
  color: kredColor,
);

const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semiBold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;
const FontWeight extraBold = FontWeight.w800;
const FontWeight black = FontWeight.w900;

class MyUtility {
  BuildContext context;

  MyUtility(this.context);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}
