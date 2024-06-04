import 'package:flutter/material.dart';
// 온보딩 스크린 외부 패키지 임포트(https://pub.dev/packages/introduction_screen/install)
import "package:introduction_screen/introduction_screen.dart";
// import 'package:testflutter/main.dart';

import 'main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          // 첫번째 페이지
          title: '',
          body: '',
          image: Image.asset(
            'assets/images/ACNH2.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          decoration: PageDecoration(
            imageFlex: 45,
            // 다른 위젯과 이미지가 겹치는 현상 해결
            imagePadding: EdgeInsets.zero,
          ),
        ),
        PageViewModel(
          title: '',
          bodyWidget: Column(
            children: [
              SizedBox(height: 20.0), // 이미지를 내리기 위한 공간 추가
              Text(
                '여러분들과 함께 하는\n주민 캐릭터가 궁금하세요?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20.0), // 공간을 띄워줌
              // 여기에 필요한 경우 검색 위젯을 추가할 수 있습니다.
              ElevatedButton(
                onPressed: () {
                  // 검색 위젯이 포함된 페이지로 이동하는 코드를 추가하세요.
                },
                child: Text('검색하기'),
              ),
              SizedBox(height: 30.0), // 공간을 띄워줌
              Text(
                '검색 기능을 통해 주민 캐릭터를 살펴보세요!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          image: Image.asset('assets/images/camp.png'),
        ),
        PageViewModel(
          // 세번째 페이지
          title: '',
          body: '',
          image: Image.asset('images/page3.png'),
          // decoration: getPageDecoration()
        ),
        PageViewModel(
          // 세번째 페이지
          title: '',
          body: '',
          image: Image.asset('images/page4.png'),
          // decoration: getPageDecoration()
        ),
      ],
      // done = 온보딩 스크린의 마지막 페이지까지 보았을 때 무엇을 할지 지정해주는 버튼
      done: const Text('Done'),
      // onDone = done 버튼이 터치가 되면 무엇을 할지 지정해주는 아규먼트
      // 대부분 온보딩 스크린이 끝나고 버튼을 누르면 앱의 시작 페이지로 이동(버튼의 onPressed 메서드와 동일)
      // push 메서드를 pushReplacement 메서드로 바꿀 경우 페이지를 다 보고 done을 눌렀을 때 메인 페이지에서 다시 온보드 페이지로 가는 뒤로가기 버튼 비활성화
      onDone: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => const MyPage()), // MyPage 위젯 리턴
        );
      },
      // next = 다음 페이지로 이동
      next: const Icon(Icons.arrow_forward_ios), // 아이콘도 지정되면 바뀌지 않으므로 const 처리
      // showBackButton = 뒤로가기 버튼 활성화 여부, 첫번째 페이지가 아닐 때 활성화
      showBackButton: true,
      back: const Icon(Icons.arrow_back_ios), // 아이콘도 지정되면 바뀌지 않으므로 const 처리,
      // // showSkipButton = 스킵 버튼 활성화 여부
      // showSkipButton: true,
      // // skip = 스킵 버튼
      // skip: const Text('skip'),
      // dotsDecorator = 하단의 페이지 점들에 대한 스타일 지정
      dotsDecorator: DotsDecorator(
        color: const Color.fromARGB(255, 137, 192, 139),
        activeColor: const Color.fromARGB(255, 0, 121, 4),
        size: const Size(10, 10),
        activeSize: Size(15, 15),
        spacing: EdgeInsets.all(10),
        activeShape: // shape 및 round 설정
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      ),
      curve: Curves.linear, // 넘김 애니메이션 속성
    );
  }
}
