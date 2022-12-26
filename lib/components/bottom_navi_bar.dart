import 'package:flutter/material.dart';
import 'package:flutter_api_prac/model/bottom_navi_bar_model.dart';

class BottomNaviBar extends StatelessWidget {
  const BottomNaviBar({super.key, required this.bottomNaviBarModel});
  final BottomNaviBarModel bottomNaviBarModel;

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> bottomNavigationBarElements = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
      const BottomNavigationBarItem(icon: Icon(Icons.article), label: ''),
      const BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
    ];
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // elevation: 0,
      items: bottomNavigationBarElements,
      currentIndex: bottomNaviBarModel.currentIndex,
      onTap: ((index) => bottomNaviBarModel.onTabTapped(index: index)),
    );
  }
}
