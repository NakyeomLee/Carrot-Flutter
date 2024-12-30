import 'package:carrot/screens/chatting/chatting_screen.dart';
import 'package:carrot/screens/home/home_screen.dart';
import 'package:carrot/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrot/screens/near_me/near_me_screen.dart';
import 'package:carrot/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// alt + enter해서 import 시킴
class MainScreens extends StatefulWidget {  @override
  State<MainScreens> createState() => _MainScreensState();
}

// StatefulWidget : 동적으로 상태 변경돼서 그림을 다시 그려야 할 때
class _MainScreensState extends State<MainScreens> {

  // 1. 상태
  int selectedIndex = 0;

  // 2. 행위
  // 헷갈리지 않게 상태를 설정했으면 바로 밑에 행위 메서드도 만들어놓기
  void onClickBottomNavigation(int value) {
    selectedIndex = value;
    setState(() {}); // 초기화
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [ // Bottom Navigation에 나타날 버튼 순서대로 New함
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) { // 위의 행위 메서드의 value값(selectedIndex) 활용해서 익명 함수
          onClickBottomNavigation(value);
        },
        backgroundColor: Colors.white,
        items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_on_square), label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.placemark), label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2), label: ""),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ""),
      ],),
    );
  }
}