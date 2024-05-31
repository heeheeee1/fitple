import 'package:fitple/screens/diary_2.dart';
import 'package:fitple/screens/home_1.dart';
import 'package:fitple/screens/mypage.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('ko_KR', null).then((_) {
    runApp(const Diary());
  });
}

class Diary extends StatefulWidget {
  const Diary({Key? key});

  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home1(userName: '')),
              );
            },
            child: Icon(Icons.arrow_back_ios_new),
          ),
          title: Text('운동 기록'),
        ),
        body: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              calendarStyle: CalendarStyle(
                outsideDaysVisible: false,
                todayTextStyle: TextStyle(color: Colors.black),
                todayDecoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blueAccent, width: 1.5),
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
              ),
              locale: 'ko_KR',
              daysOfWeekHeight: 30,
              calendarFormat: CalendarFormat.month,
              availableCalendarFormats: const {
                CalendarFormat.month: '',
              },
              calendarBuilders: CalendarBuilders(
                defaultBuilder: (context, date, _) {
                  return Center(
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20), // 원하는 크기의 SizedBox를 추가합니다.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '6월 20일 (목)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      letterSpacing: -0.34,
                    ),
                  ),
                  Container(
                    width: 100, // 컨테이너의 너비를 조정하여 아이콘이 잘 맞도록 합니다.
                    height: 48,
                    padding: const EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.list))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // 버튼과의 간격을 조절합니다.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Diary2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12),
                  minimumSize: Size(400, 0),
                ),
                child: Text('오늘의 기록 추가하기'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
