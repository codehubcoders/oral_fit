import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/modules/alarm/views/alarm_view.dart';
import 'package:oral_fit/app/modules/chat/views/chat_view.dart';
import 'package:oral_fit/app/modules/home/views/home_view.dart';
import 'package:oral_fit/app/modules/order_list/views/order_list_view.dart';

import '../controllers/navigationbar_controller.dart';

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
                _bottomNavigationBarItem(
                  icon: FontAwesomeIcons.solidCommentDots,
                  label: '채팅',
                ),
                _bottomNavigationBarItem(
                  icon: FontAwesomeIcons.solidBell,
                  label: '알림',
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
      icon: FaIcon(icon),
      label: label,
    );
  }
}
