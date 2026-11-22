import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/flutter_flow/ff_builtin_enums.dart';

String? converterUnit(
  double? inputValue,
  String? fromUnit,
  String? toUnit,
) {
  if (inputValue == null) return '0';

  double fromFactor = 1.0;
  if (fromUnit == 'Cups') fromFactor = 236.588;
  if (fromUnit == 'Tablespoons') fromFactor = 14.7868;
  if (fromUnit == 'Teaspoons') fromFactor = 4.92892;
  if (fromUnit == 'Milliliters') fromFactor = 1.0;
  if (fromUnit == 'Grams') fromFactor = 1.0;

  double toFactor = 1.0;
  if (toUnit == 'Cups') toFactor = 236.588;
  if (toUnit == 'Tablespoon') toFactor = 14.7868;
  if (toUnit == 'Teaspoons') fromFactor = 4.92892;
  if (toUnit == 'Milliliters') fromFactor = 1.0;
  if (toUnit == 'Grams') fromFactor = 1.0;

  double inMl = inputValue * fromFactor;
  double result = inMl / toFactor;
  return result.toStringAsFixed(2);
}
