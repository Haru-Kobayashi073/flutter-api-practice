//flutter
import 'package:flutter/material.dart';
//packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNaviBarProvider = ChangeNotifierProvider((ref) => BottomNaviBarModel());

class BottomNaviBarModel extends ChangeNotifier {
  int currentIndex = 0;
  late PageController pageController;

  BottomNaviBarModel() {
    init();
  }

  void init() {
    pageController = PageController(initialPage: currentIndex);
    //ボトムナビの左からのある番数に紐づいたアイコンのページを表示するようにするコントローラー
    notifyListeners();
  }

  void onPageChanged({required int index}) {
    currentIndex = index;
    notifyListeners();
  }

  void onTabTapped({required int index}) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease);
  }

  void setPageController() {
    pageController = PageController(initialPage: currentIndex);
    notifyListeners();
  }
}
