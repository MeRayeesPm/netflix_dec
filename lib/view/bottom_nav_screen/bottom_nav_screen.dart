import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';
import 'package:netflix_dec/view/comming_soon_screen/comming_soon_screen.dart';
import 'package:netflix_dec/view/download_screen/download_screen.dart';
import 'package:netflix_dec/view/home_screen/home_screen.dart';
import 'package:netflix_dec/view/menu_screen/menu_screen.dart';
import 'package:netflix_dec/view/search_screen%20copy/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Widget> screen = [
    HomeScreen(),
    SearchSreen(),
    CommingSoonScreen(),
    DownloadScreen(),
    MenuScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;
            print(value);
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedItemColor: ColorConstants.mainWhite,
          unselectedItemColor: ColorConstants.mainGrey,
          backgroundColor: ColorConstants.mainBlack,
          selectedFontSize: 8.2,
          unselectedFontSize: 8.2,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined),
                label: "Coming soon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_sharp), label: "Downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
          ]),
    );
  }
}
