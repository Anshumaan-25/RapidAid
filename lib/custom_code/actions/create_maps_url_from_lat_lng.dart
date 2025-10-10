// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
String createMapsUrlFromLatLng(LatLng destinationLocation) {
  final double lat = destinationLocation.latitude;
  final double lng = destinationLocation.longitude;
  return 'https://www.google.com/maps/dir/?api=1&destination=$lat,$lng';
}
