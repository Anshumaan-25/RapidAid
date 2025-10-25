// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

String createMapsUrl(double destinationLat, double destinationLng) {
  final String encodedDestination =
      Uri.encodeComponent('$destinationLat,$destinationLng');
  final String url =
      'https://www.google.com/maps/dir/?api=1&destination=$encodedDestination';
  return url;
}
