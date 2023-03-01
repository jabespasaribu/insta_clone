import 'package:flutter/material.dart';

class SingularThemeData {
  static ThemeData light() => ThemeData.light().applyBase();
  static ThemeData dark() => ThemeData.dark().applyBase();
}

extension _ThemeDataExtension on ThemeData {
  ThemeData applyBase() {
    return copyWith(
        textTheme: textTheme.apply(
      fontFamily: 'Open Sans',
    ));
  }
}
