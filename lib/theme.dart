import 'package:flutter/material.dart';
// 1
import 'package:google_fonts/google_fonts.dart';

// 2
TextTheme textTheme() {
  return TextTheme(
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    displayMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// 3
// IconThemeData iconTheme() {
//   return const IconThemeData(
//     color: Colors.black,
//   );
// }

// 4
// AppBarTheme appBarTheme() {
//   return AppBarTheme(
//     centerTitle: false,
//     color: Colors.white,
//     elevation: 0.0,
//     iconTheme: iconTheme(),
//     titleTextStyle: GoogleFonts.nanumGothic(
//       fontSize: 16,
//       fontWeight: FontWeight.bold,
//       color: Colors.black,
//     ),
//   );
// }

// 5
// BottomNavigationBarThemeData bottomNavigatorTheme() {
//   return const BottomNavigationBarThemeData(
//     selectedItemColor: Colors.orange,
//     unselectedItemColor: Colors.black54,
//     showUnselectedLabels: true,
//   );
// }

// 6
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    // textTheme: textTheme(),
    // appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed, // fixed 걸어놔야 바텀네비게이션바에 바탕색 적용이 가능해짐
      showSelectedLabels: false, // 선택된 아이콘의 라벨의 나타남 유무 => false로 라벨이 사라지게 하면 아이콘이 중앙에 위치할 수 있음(아이콘 밑의 라벨 자리가 없어졌으니까)
      showUnselectedLabels: false, // 선택되지 않은 아이콘의 라벨의 나타남 유무
      selectedItemColor: Colors.orange, // 바텀네비게이션바에서 선택된 아이콘의 색
      unselectedItemColor: Colors.black54, // 선택되지 않은 아이콘의 색
    ),
    primarySwatch: Colors.orange, // 이 앱의 메인 색상을 오렌지색으로 지정 (지정 시점에는 어느 부분이 오렌지색이 될지는 모름)
  );
}