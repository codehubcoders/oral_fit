import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
// import 'package:oral_fit/app/core/theme/theme_data.dart';
// import 'package:oral_fit/app/modules/alarm/views/alarm_view.dart';
// import 'package:oral_fit/app/modules/chat/views/chat_view.dart';
// import 'package:oral_fit/app/modules/home/views/home_view.dart';
// import 'package:oral_fit/app/modules/order_list/views/order_list_view.dart';

import '../../../core/theme/theme_data.dart';
import '../../alarm/views/alarm_view.dart';
import '../../chat/views/chat_view.dart';
import '../../home/views/home_view.dart';
import '../../order_list/views/order_list_view.dart';
import '../controllers/navigationbar_controller.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

// class NavigationbarView extends GetView<NavigationbarController> {
//   final String orderListIcon = 'assets/images/orderList.svg';
//   final String paperPlusGreyIcon = 'assets/images/paper_Plus_gery.svg';
//   @override
//   Widget build(BuildContext context) {
//     Get.lazyPut<NavigationbarController>(() => NavigationbarController());
//     return GetBuilder<NavigationbarController>(builder: (controller) {
//       return PersistentTabView(
//         context,
//         screens: screens(),
//         items: items(),
//         onItemSelected: (index) {},
//         // backgroundColor: Colors.white,
//         navBarHeight: 62,
//         navBarStyle: NavBarStyle.style10,
//       );
//     });
//   }
// }

// List<Widget> screens() {
//   return [
//     Scaffold(
//       body: HomeView(),
//     ),
//     OrderListView(),
//     ChatView(),
//     AlarmView(),
//   ];
// }

// List<PersistentBottomNavBarItem> items() {
//   return [
//     btnItem(
//       title: '의뢰서작성',
//       icon: Icons.home_filled,
//       activeColor: Colors.deepPurple,
//     ),
//     btnItem(
//         title: '주문목록',
//         icon: Icons.add_box_rounded,
//         activeColor: Colors.deepOrange),
//     btnItem(
//       title: '채팅',
//       icon: Icons.settings,
//       activeColor: Colors.amber,
//     ),
//     btnItem(
//       title: '알림',
//       icon: Icons.settings,
//       activeColor: Colors.amber,
//     ),
//   ];
// }

// PersistentBottomNavBarItem btnItem({
//   required String title,
//   required IconData icon,
//   required Color activeColor,
// }) {
//   return PersistentBottomNavBarItem(
//     title: title,
//     icon: Icon(icon),
//     textStyle: const TextStyle(fontWeight: FontWeight.bold),
//     activeColorPrimary: activeColor,
//     inactiveColorPrimary: const Color.fromRGBO(195, 195, 195, 1),
//     activeColorSecondary: Colors.white,
//   );
// }
//   //
//
class NavigationbarView extends GetView<NavigationbarController> {
  final String orderListIcon = 'assets/images/orderList.svg';
  final String paperPlusGreyIcon = 'assets/images/paper_Plus_gery.svg';
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<NavigationbarController>(() => NavigationbarController());
    return GetBuilder<NavigationbarController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                OrderListView(),
                ChatView(),
                AlarmView(),
              ],
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 60,
            child: BottomNavigationBar(
              unselectedItemColor: greyLiteColorD,
              selectedItemColor: primaryColor,
              selectedFontSize: 10,
              unselectedLabelStyle: TextStyle(color: greySubLiteColor9),
              unselectedFontSize: 10,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              elevation: 5,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(paperPlusGreyIcon),
                  activeIcon: Image.asset('assets/images/paper_Plus01.png'),
                  label: '의뢰서작성',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(orderListIcon),
                  activeIcon: Image.asset('assets/images/orderList.png'),
                  label: '주문목록',
                ),
                BottomNavigationBarItem(
                  icon: Stack(children: [
                    Icon(FontAwesomeIcons.solidCommentDots),
                    Positioned(
                      right: 0,
                      child: Container(
                        alignment: Alignment.center,
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xFFE05D5D)),
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontSize: 10,
                              color: whiteColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ]),
                  label: '채팅',
                ),
                BottomNavigationBarItem(
                  icon: Stack(children: [
                    Icon(FontAwesomeIcons.solidBell),
                    Positioned(
                      right: 0,
                      child: Container(
                        alignment: Alignment.center,
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xFFE05D5D)),
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontSize: 10,
                              color: whiteColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ]),
                  label: '알림',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
