import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widget/appbar/main_app_bar.dart';
import '../widget/bottomnavbar/bottom_navigation_bar.dart';

void main() {
  runApp(const SearchMainScreen());
}
/**
 * SearchMainScreen을 보기 위한 임시 메인 함수
 * */

class SearchMainScreen extends StatelessWidget {
  const SearchMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp으로 감싸기 시작
      debugShowCheckedModeBanner: false, // 디버그 라벨 제거
      home: Directionality(
        textDirection: TextDirection.ltr, // 텍스트 방향 설정 (왼쪽에서 오른쪽)
        child: SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: SearchMainAppBar(),
            ),
            body: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
            ),
            bottomNavigationBar: const SizedBox(
              height: 60,
              child: SearchBottomNavBar(),
            ),
          ),
        ),
      ),
    ); // MaterialApp으로 감싸기 끝
  }
}
