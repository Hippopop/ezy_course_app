part of 'light_theme.dart';

final _iFillColor = Colors.white.withOpacity(0.1);

final inputDecoration = InputDecorationTheme(
  filled: true,
  fillColor: _iFillColor,
  contentPadding: horizontal18 + vertical12,
  enabledBorder: const OutlineInputBorder(
    borderRadius: brA12,
    borderSide: BorderSide(width: 1, color: _sText),
  ),
  focusedBorder: const OutlineInputBorder(
    borderRadius: brA12,
    borderSide: BorderSide(width: 1, color: _sText),
  ),
  errorBorder: const OutlineInputBorder(
    borderRadius: brA12,
    borderSide: BorderSide(width: 1, color: _errorColor),
  ),
  disabledBorder: const OutlineInputBorder(
    borderRadius: brA12,
    borderSide: BorderSide(width: 1, color: _sText),
  ),
  border: const OutlineInputBorder(
    borderRadius: brA12,
    borderSide: BorderSide(width: 1, color: _sText),
  ),
  outlineBorder: const BorderSide(width: 1, color: _sText),
);
