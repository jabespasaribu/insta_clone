import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const backgroundColor = Color.fromRGBO(0, 0, 0, 1.0);
const blueColor = Color.fromRGBO(0, 149, 246, 1.0);
const primaryColor = Colors.white;
const secondaryColor = Colors.grey;
const darkGreyColor = Color.fromRGBO(97, 97, 97, 1.0);

Widget sizeVer(double height) {
  return SizedBox(height: height);
}

Widget sizeHor(double width) {
  return SizedBox(width: width);
}

TextStyle regularStyle({
  double fontSize = 10,
  Color color = primaryColor,
}) {
  return TextStyle(
    fontSize: fontSize.sp,
    color: color,
  );
}

TextStyle boldStyle({
  double fontSize = 10,
  Color color = primaryColor,
}) {
  return TextStyle(
    fontSize: fontSize.sp,
    color: color,
    fontWeight: FontWeight.bold,
  );
}
