import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:laundry/pages/Schedule.dart';
import 'package:laundry/pages/cart.dart';
import 'package:laundry/pages/dashboard.dart';
import 'package:laundry/pages/history.dart';
import 'package:laundry/pages/home.dart';
import 'package:laundry/pages/notification.dart';
import 'package:laundry/pages/offer.dart';
import 'package:laundry/pages/profile.dart';

import 'firebase_options.dart';
import './pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // <--- WAJIB sebelum Firebase.init
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp()); // perhatikan: huruf besar konsisten
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
