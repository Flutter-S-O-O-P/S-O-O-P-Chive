import 'package:flutter/material.dart';

class SearchMainAppBar extends StatelessWidget {
  const SearchMainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF00A059),
        ),
        // 여기에 이미지 넣고싶어
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 28,
              height: 28,
            ),
            SizedBox(width: 6),
            Image.asset(
              'assets/images/textlogo.png',
              width: 130,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
