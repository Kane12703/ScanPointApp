import 'package:flutter/material.dart';
import 'package:scan_point_app/ui/auth/login.dart';
import 'package:scan_point_app/ui/main/history/history.dart';
import 'package:scan_point_app/ui/main/notification/notification.dart';
import 'package:scan_point_app/ui/main/profile/profile.dart';

class ScanPointApp extends StatefulWidget {
  const ScanPointApp({super.key});

  @override
  State<ScanPointApp> createState() => _ScanPointAppState();
}

class _ScanPointAppState extends State<ScanPointApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomTabApp extends StatefulWidget {
  const BottomTabApp({super.key});

  @override
  State<BottomTabApp> createState() => _BottomTabAppState();
}

class _BottomTabAppState extends State<BottomTabApp> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = [
    const HomeTab(),
    const HisoryTab(),
    const NotificationTab(),
    const ProfileTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Colors.white,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (int newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: '',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
        ],
      ),
    );
  }
}

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
