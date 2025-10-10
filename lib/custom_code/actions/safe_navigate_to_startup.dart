// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future safeNavigateToStartup(BuildContext context) async {
  // This custom action safely navigates to the 'startup' page
  // and clears the entire navigation stack, so the user cannot go back.
  // NOTE: You must have a page with the route name 'startup' in your project.

  Navigator.of(context).pushNamedAndRemoveUntil(
    'startup', // The name of the page route you want to go to
    (route) => false, // This predicate removes all previous routes
  );
}
