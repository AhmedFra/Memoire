import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';

class CustomCalendarTimeline extends StatefulWidget {
  @override
  _CustomCalendarTimelineState createState() => _CustomCalendarTimelineState();
}

class _CustomCalendarTimelineState extends State<CustomCalendarTimeline> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: _selectedDate,
            firstDate: DateTime(DateTime.now().year - 1),
            lastDate: DateTime(DateTime.now().year + 1),
            onDateSelected: (date) {
              setState(() {
                _selectedDate = date;
              });
            },
            leftMargin: 20,
            monthColor: Colors.blue,
            dayColor: Colors.grey,
            dayNameColor: Color.fromARGB(255, 0, 0, 0),
            activeDayColor: Colors.white,
            activeBackgroundDayColor: Colors.blue,
            dotsColor: Color.fromARGB(255, 0, 0, 255),
            selectableDayPredicate: (date) => true,
            showYears: false
          ),
          // Add other widgets or content here
        ],
      ),
    );
  }
}
