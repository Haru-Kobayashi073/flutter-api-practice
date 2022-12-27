import 'package:flutter/material.dart';
import 'package:flutter_api_prac/components/bottom_navi_bar.dart';
import 'package:flutter_api_prac/model/bottom_navi_bar_model.dart';
import 'package:flutter_api_prac/view/home_screen.dart';
import 'package:flutter_api_prac/view/weather/weather_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'API Training'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final BottomNaviBarModel bottomNaviBarModel =
        ref.watch(bottomNaviBarProvider);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      bottomNavigationBar:
          BottomNaviBar(bottomNaviBarModel: bottomNaviBarModel),
      body: PageView(
        controller: bottomNaviBarModel.pageController,
        onPageChanged: (index) =>
            bottomNaviBarModel.onPageChanged(index: index),
        //childrenの数はElementsの数
        children: [
          //注意：ページじゃないのでScaffold
          HomeScreen(),
          WeatherScreen()
        ],
      ),
    );
  }
}
