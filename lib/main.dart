import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';


/// Entry point of Flutter App
Future<void> main() async {
// Ensure that widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();

// Initialize GetX Local Storage


// Remove # sign from url
  setPathUrlStrategy();


// Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


// Main App Starts here...
  runApp(const App());
}
