import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/Providers/HomeProvider.dart';
import '/Screens/AboutUs.dart';
import '/Screens/More.dart';
import '/Screens/Productdescription.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _buildScreens() {
    return [
      Productdescription(),
      AboutUs(),
      Container(),
      Container(),
      More(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.dashboard_outlined),
        title: ("Overview"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.people_outline_outlined),
        // Image.asset(
        //   "assets/images/about.png",
        //   //fit: BoxFit.cover,
        // ),
        title: ("Profile"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.analytics_outlined),
        // Image.asset(
        //   "assets/images/about.png",
        //   //fit: BoxFit.cover,
        // ),
        title: ("Market"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.paperPlane),
        // Image.asset(
        //   "assets/images/about.png",
        //   //fit: BoxFit.cover,
        // ),
        title: ("Contact"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.more_horiz),
        // Image.asset(
        //   "assets/images/about.png",
        //   //fit: BoxFit.cover,
        // ),
        title: ("More"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: PersistentTabController(
          initialIndex: Provider.of<HomeProvier>(context).currentindex),
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.red, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        // borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }
}

// PersistentTabView(
//         context,
//         controller: _controller,
//         screens: _buildScreens(),
//         items: _navBarsItems(),
//         confineInSafeArea: true,
//         backgroundColor: Colors.white, // Default is Colors.white.
//         handleAndroidBackButtonPress: true, // Default is true.
//         resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
//         stateManagement: true, // Default is true.
//         hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
//         decoration: NavBarDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           colorBehindNavBar: Colors.white,
//         ),
//         popAllScreensOnTapOfSelectedTab: true,
//         popActionScreens: PopActionScreensType.all,
//         itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
//           duration: Duration(milliseconds: 200),
//           curve: Curves.ease,
//         ),
//         screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
//           animateTabTransition: true,
//           curve: Curves.ease,
//           duration: Duration(milliseconds: 200),
//         ),
//         navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
//     );