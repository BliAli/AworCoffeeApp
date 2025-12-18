import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/controllers/home_controller.dart';
import 'package:awor_coffee/views/home_screen/home_screen.dart';
import 'package:awor_coffee/views/menu_screen/menu_screen.dart';
import 'package:awor_coffee/views/order_screen/order_screen.dart';
import 'package:awor_coffee/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navBody = [HomeScreen(), OrderScreen(), ProfileScreen()];

    var navBarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHomeFill, width: 26,), activeIcon: Image.asset(icHome, width: 26,), label: menu),
      BottomNavigationBarItem(icon: Image.asset(icOrder, width: 26,),  activeIcon: Image.asset(icOrderFill, width: 26,), label: order),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26,), activeIcon: Image.asset(icProfileFill, width: 26,), label: profile),
    ];

    return Scaffold(
      backgroundColor: whiteColorP,
      body: Column(
        children: [
          Obx(() => Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(() =>
        BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          type: BottomNavigationBarType.fixed,
          items: navBarItem,
          selectedLabelStyle: TextStyle(
            fontFamily: semibold,
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: semibold,
          ),
          selectedItemColor: lightGreyColor,
          onTap: (value) => {
            controller.currentNavIndex.value = value,
          },
        )
      ),
    );
  }
}
