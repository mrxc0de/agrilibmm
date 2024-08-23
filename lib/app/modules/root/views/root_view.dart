import 'package:agrilibmm/app/modules/book/views/book_view.dart';
import 'package:agrilibmm/app/modules/home/views/home_view.dart';
import 'package:agrilibmm/app/modules/login/views/login_view.dart';
import 'package:agrilibmm/app/modules/profile/views/profile_view.dart';
import 'package:agrilibmm/app/modules/training/views/training_view.dart';
import 'package:agrilibmm/core/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/root_controller.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class RootView extends GetView<RootController> {
   RootView({super.key});

  late PersistentTabController _controller;
  ScrollController _scrollController1 = ScrollController();
  ScrollController _scrollController2 = ScrollController();
  ScrollController _scrollController3 = ScrollController();



  
  @override
  Widget build(BuildContext context) {
    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [BookView(), TrainingView(), ProfileView()];
    }


    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.book),
          title: ("Books"),
          activeColorPrimary: GFColors.WHITE,
          inactiveColorPrimary: mPrimaryColor,
          scrollController: _scrollController1,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: "/",
            routes: {
              "/first": (final context) => const HomeView(),
              "/second": (final context) => const LoginView(),
              "/third": (final context) => const ProfileView(),
            },
          ),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.video_camera),
          title: ("Trainings"),
          activeColorPrimary: GFColors.WHITE,
          inactiveColorPrimary: mPrimaryColor,
          scrollController: _scrollController2,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: "/",
            routes: {
              "/first": (final context) => const HomeView(),
              "/second": (final context) => const LoginView(),
              "/third": (final context) => const ProfileView(),
            },
          ),
        ),

        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.profile_circled),
          title: ("Profile"),
          activeColorPrimary: GFColors.WHITE,
          inactiveColorPrimary: mPrimaryColor,
          scrollController: _scrollController2,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: "/",
            routes: {
              "/first": (final context) => const HomeView(),
              "/second": (final context) => const LoginView(),
              "/third": (final context) => const ProfileView(),
            },
          ),
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: mAccentTwoColor,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
    );
  }
}
