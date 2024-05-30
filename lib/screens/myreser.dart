import 'package:flutter/material.dart';

void main() {
  runApp(const MyReser());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class MyReser extends StatelessWidget {
  const MyReser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Mypage(),
        ]),
      ),
    );
  }
}

class Mypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity, // 375에서 double.infinity로 변경
          height: double.infinity, // 812에서 double.infinity로 변경
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 12,
                    left: 21,
                    right: 14.67,
                    bottom: 11,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          padding: const EdgeInsets.only(
                            top: 5.17,
                            left: 12.45,
                            right: 13.12,
                            bottom: 4.74,
                          ),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 218.67),
                      Container(
                        width: 66.66,
                        height: 11.34,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 42.33,
                              top: 0,
                              child: Container(
                                width: 24.33,
                                height: 11.33,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 22.03,
                              top: 0,
                              child: Container(
                                width: 15.27,
                                height: 10.97,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/150x110"), // 수정
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0.34,
                              child: Container(
                                width: 17,
                                height: 10.67,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/170x110"), // 수정
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -4,
                top: 44,
                child: Container(
                  height: 42,
                  padding: const EdgeInsets.only(
                    top: 9,
                    left: 16,
                    right: 142,
                    bottom: 9,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      left: BorderSide(color: Color(0xFFE6E6E6)),
                      top: BorderSide(color: Color(0xFFE6E6E6)),
                      right: BorderSide(color: Color(0xFFE6E6E6)),
                      bottom: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 24,
                        height: double.infinity,
                        padding: const EdgeInsets.only(
                          top: 3.57,
                          left: 6.94,
                          right: 7.57,
                          bottom: 3.57,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                          ],
                        ),
                      ),
                      const SizedBox(width: 102),
                      Text(
                        'PT 예약 내역',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0.08,


                          letterSpacing: -0.34,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 17,
                top: 106,
                child: Container(
                  width: 343,
                  height: 165,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0x4CE0E0E0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFE0E0E0)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 19,
                        top: 13,
                        child: Container(
                          width: 59,
                          height: 61,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 51,
                                height: 52,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/510x520"), // 수정
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 110,
                        top: 20,
                        child: Container(
                          width: 105,
                          height: 38,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 137,
                                child: Text(
                                  '박성주 트레이너',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0.08,
                                      letterSpacing: -0.30

                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '육체미 첨단점',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 13,
                        top: 79,
                        child: SizedBox(
                          width: 328,
                          height: 34,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '개인PT (1시간) 10회 + 헬스',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.12,
                                  ),
                                ),
                                TextSpan(
                                  text: '                            400,000원\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 0.12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29,
                        top: 118,
                        child: Container(
                          width: 142,
                          height: 33,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: Color(0xB2285FEB),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '결제 내역',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.12,
                                  letterSpacing: -0.24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 178,
                        top: 118,
                        child: Container(
                          width: 142,
                          height: 33,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: Color(0xB2285FEB),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '리뷰 작성',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.12,
                                  letterSpacing: -0.24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}