import 'package:flutter/material.dart';
import 'package:scan_point_app/navigatiton/main_screen.dart';
import 'package:scan_point_app/ui/auth/login.dart';

void main() {
  runApp(const ScanPointApp());
}

class ScanPointApp extends StatefulWidget {
  const ScanPointApp({super.key});

  @override
  State<ScanPointApp> createState() => _ScanPointAppState();
}

class _ScanPointAppState extends State<ScanPointApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
