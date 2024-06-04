import 'package:flutter/material.dart';

class SearchBottomNavBar extends StatefulWidget {
  const SearchBottomNavBar({Key? key}) : super(key: key);

  @override
  State<SearchBottomNavBar> createState() => _SearchBottomNavBarState();
}

class _SearchBottomNavBarState extends State<SearchBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFFB800),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/homebtn.png',
              height: 45,
              width: 45,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/searchbtn.png',
              height: 45,
              width: 45,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/starbtn.png',
              height: 45,
              width: 45,
            ),
            label: '',
          ),
          // BottomNavigationBarItem(
          //   icon: Image.asset(
          //     'assets/images/bookmarkbtn.png',
          //     height: 45,
          //     width: 45,
          //   ),
          //   label: '',
          // ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
