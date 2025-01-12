import 'package:ezy_course_app/src/constants/design/border_radius.dart';
import 'package:ezy_course_app/src/constants/design/paddings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../extensions/colors_theme.dart';

part '_input_field_decoration.dart';

const _theme = Colors.white;
const _opposite = Colors.black;
const _text = Colors.black;
const _primaryColor = Color(0xFF004852);
const _secondary = Color(0xFF023D45);
const _background = Color(0xfff3f3f3);
const _bgShade = Color(0x0000001A);
const _lightBg = Color(0xFF156A76);
const _primaryAccent = Color(0xFF023D45);
const _sText = Color(0x77F5F5FF);
const _secondaryAccent = Color(0xFF6762ff);
const _extraText = Colors.grey;

const _mainAccent = Color(0xFFE8F54A);

const _errorColor = Color(0xFFF03738);
const _warningColor = Color(0xFFF3BB1C);

const lightThemeKey = "#BASE_LIGHT_THEME";
final lightTheme = ThemeData.light(useMaterial3: false).copyWith(
  primaryColor: _primaryColor,
  scaffoldBackgroundColor: _background,
  iconTheme: const IconThemeData(color: _primaryAccent),
  textTheme: GoogleFonts.figtreeTextTheme(const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
    ),
  )).apply(
    bodyColor: _text,
  ),
  colorScheme: const ColorScheme.light(
    primary: _primaryColor,
    secondary: _mainAccent,
    error: _errorColor,
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      padding: vertical12,
      backgroundColor: _mainAccent,
      shape: const RoundedRectangleBorder(
        borderRadius: brA8,
      ),
    ),
  ),
  inputDecorationTheme: inputDecoration,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: _primaryAccent.withOpacity(0.7),
    unselectedItemColor: _primaryAccent.withOpacity(0.32),
    selectedIconTheme: const IconThemeData(color: _primaryColor),
    showUnselectedLabels: true,
  ),
  appBarTheme: AppBarTheme(
    titleSpacing: 0,
    toolbarHeight: 100,
    backgroundColor: _primaryColor,
    titleTextStyle: GoogleFonts.figtreeTextTheme().bodyLarge?.copyWith(
          color: _theme,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
  ),
  checkboxTheme: const CheckboxThemeData(
    side: BorderSide(
      color: _sText,
      width: 2,
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.transparent,
    constraints: BoxConstraints(),
  ),
  dividerColor: _extraText.withOpacity(0.8),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: emptyInset,
      visualDensity: VisualDensity.compact,
    ),
  ),
  extensions: {
    ColorTheme(
      text: _text,
      secondaryText: _sText,
      theme: _theme,
      background: _lightBg,
      opposite: _opposite,
      primary: _primaryColor,
      secondary: _secondary,
      primaryAccent: _primaryAccent,
      secondaryBackground: _bgShade,
      accent: _mainAccent,
      primaryText: _extraText,
      secondaryAccent: _secondaryAccent,
      //

      errorState: _errorColor,
      warningState: _warningColor,
    ),
  },
);
