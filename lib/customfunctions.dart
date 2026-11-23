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
  if (inputValue == null || fromUnit == null || toUnit == null) {
    return '0.00';
  }

  String from = fromUnit.trim().toLowerCase();
  String to = toUnit.trim().toLowerCase();

  const Map<String, double> factors = {
    'cups': 236.588,
    'tablespoons': 14.7868,
    'teaspoons': 4.92892,
    'milliliters': 1.0,
  };

  if (from == 'grams' || to == 'grams') {
    return 'Grams conversion requires an ingredient';
  }

  if (!factors.containsKey(from) || !factors.containsKey(to)) {
    return 'Invalid unit';
  }

  double result = (inputValue * factors[from]!) / factors[to]!;

  return result.toStringAsFixed(2);
}
