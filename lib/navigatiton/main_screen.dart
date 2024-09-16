import 'package:flutter/material.dart';
import 'package:scan_point_app/ui/main/history/history.dart';
import 'package:scan_point_app/ui/main/home/home.dart';
import 'package:scan_point_app/ui/main/home/scanner.dart';
import 'package:scan_point_app/ui/main/notification/notification.dart';
import 'package:scan_point_app/ui/main/profile/profile.dart';
import 'package:scan_point_app/navigatiton/nav_bar.dart';
import 'package:scan_point_app/navigatiton/nav_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final historyNavKey = GlobalKey<NavigatorState>();
  final notificationNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;
  List<NavModel> items = [];

  @override
  void initState() {
    super.initState();
    items = [
      NavModel(
        page: const HomeTab(),
        navKey: homeNavKey,
      ),
      NavModel(
        page: const HisoryTab(),
        navKey: historyNavKey,
      ),
      NavModel(
        page: const NotificationTab(),
        navKey: notificationNavKey,
      ),
      NavModel(
        page: const ProfileTab(),
        navKey: profileNavKey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          if (items[selectedTab].navKey.currentState?.canPop() ?? false) {
            items[selectedTab].navKey.currentState?.pop();
            return Future.value(false);
          } else {
            return Future.value(true);
          }
        },
        child: Scaffold(
          body: IndexedStack(
            index: selectedTab,
            children: items
                .map((page) => Navigator(
                      key: page.navKey,
                      onGenerateInitialRoutes: (navigator, initialRoute) {
                        return [
                          MaterialPageRoute(builder: (context) => page.page)
                        ];
                      },
                    ))
                .toList(),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            margin: const EdgeInsets.only(top: 10),
            height: 64,
            width: 64,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              elevation: 0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Scanner()),
                );
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 3,
                  color: Colors.orange[400]!,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.qr_code_scanner_sharp,
                color: Colors.orange[400]!,
              ),
            ),
          ),
          bottomNavigationBar: NavBar(
            pageIndex: selectedTab,
            onTap: (index) {
              if (index == selectedTab) {
                items[index]
                    .navKey
                    .currentState
                    ?.popUntil((route) => route.isFirst);
              } else {
                setState(() {
                  selectedTab = index;
                });
              }
            },
          ),
        ));
  }
}
