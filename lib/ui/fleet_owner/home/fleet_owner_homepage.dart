import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vamuz_riders/constants/colors.dart';
import 'package:vamuz_riders/constants/images.dart';
import 'package:vamuz_riders/constants/styles.dart';
import 'package:vamuz_riders/ui/fleet_owner/home/bottom_nav_screens/delivery/delivery_management.dart';
import 'package:vamuz_riders/ui/fleet_owner/home/bottom_nav_screens/fleet/fleet_screen.dart';
import 'package:vamuz_riders/ui/fleet_owner/home/bottom_nav_screens/home/home_screen.dart';
import 'package:vamuz_riders/ui/fleet_owner/home/bottom_nav_screens/account/account.dart';
import 'package:vamuz_riders/ui/fleet_owner/home/bottom_nav_screens/notification/notification.dart';

import 'package:vamuz_riders/ui/utils/event_bus.dart';

class FleetOwnerHomePage extends StatefulWidget {
  final int? index;
  const FleetOwnerHomePage({Key? key, this.index}) : super(key: key);

  @override
  State<FleetOwnerHomePage> createState() => _FleetOwnerHomePageState();
}

class _FleetOwnerHomePageState extends State<FleetOwnerHomePage> {
  ValueNotifier<int> currentIndex = ValueNotifier(0);
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
      currentIndex.value = index;
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.index != null) {
      currentIndex.value = widget.index!;
    }
    switchBottomNavStreamSubscription =
        eventBus.on<SwitchBottomNavEvent>().listen(onSwitchBottomNavEvent);
  }

  onSwitchBottomNavEvent(SwitchBottomNavEvent event) async {
    if (mounted) {
      currentIndex.value = event.index;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: currentIndex,
      builder: (_, currentIndex, __) => Scaffold(
        body: IndexedStack(index: currentIndex, children: const [
          OwnerHomeScreen(),
          FleetManagementScreen(),
          DeliveryManagement(),
          FleetNotifications(),
          FleetOwnerAccount(),
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
        currentIndex: currentIndex.value,
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
                fleet,
                height: 24,
                width: 24,
                color: CustomColors.grey100,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Image.asset(
                fleet,
                height: 24,
                width: 24,
                color: CustomColors.primary,
              ),
            ),
            label: "Fleet",
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
