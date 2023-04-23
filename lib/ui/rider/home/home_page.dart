import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/ui/rider/home/nav_bar_screens/account/account_screen.dart';
import 'package:vamuz_riders/ui/rider/home/nav_bar_screens/delivery/deliveries.dart';
import 'package:vamuz_riders/ui/rider/home/nav_bar_screens/home/home_screen.dart';
import 'package:vamuz_riders/ui/rider/home/nav_bar_screens/notification/notification.dart';
import 'package:vamuz_riders/ui/utils/event_bus.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<int> _currentIndex = ValueNotifier(0);
  late StreamSubscription switchBottomNavStreamSubscription;
  bool loading = true;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
    4: GlobalKey<NavigatorState>(),
  };

  @override
  void dispose() {
    switchBottomNavStreamSubscription.cancel();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex.value = index;
    });
  }

  @override
  void initState() {
    super.initState();
    switchBottomNavStreamSubscription =
        eventBus.on<SwitchBottomNavEvent>().listen(onSwitchBottomNavEvent);
  }

  onSwitchBottomNavEvent(SwitchBottomNavEvent event) async {
    if (mounted) {
      _currentIndex.value = event.index;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _currentIndex,
      builder: (_, currentIndex, __) => Scaffold(
        body: IndexedStack(index: currentIndex, children: [
          const HomeScreen(),
          const MyDeliveries(),
          const Notifications(),
          const Account(),
        ]),
        bottomNavigationBar: bottomNavigation(),
      ),
    );
  }

  Widget bottomNavigation() {
    return BottomNavigationBar(
        elevation: 0,
        backgroundColor: CustomColors.accentColor1,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: CustomColors.grey100,
        selectedLabelStyle:
            boldHeading5.copyWith(fontSize: 11, color: CustomColors.primary),
        selectedItemColor: CustomColors.primary,
        unselectedLabelStyle: hintStyle.copyWith(fontSize: 11),
        onTap: (index) {
          _onItemTapped(index);
        },
        currentIndex: _currentIndex.value,
        items: [
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Icon(Icons.home),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Image.asset(
                truckOutline,
                height: 24,
                width: 24,
                color: CustomColors.grey100,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Image.asset(
                truckOutline,
                height: 24,
                width: 24,
                color: CustomColors.primary,
              ),
            ),
            label: "Delivery",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Image.asset(
                bell,
                height: 24,
                width: 24,
                color: CustomColors.grey100,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Image.asset(
                bell,
                height: 24,
                width: 24,
                color: CustomColors.primary,
              ),
            ),
            label: "Notifications",
          ),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Icon(Icons.account_circle_outlined),
            ),
            label: "Account",
          ),
        ]);
  }
}
