import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';

class Reminders extends StatefulWidget {
  const Reminders({Key? key}) : super(key: key);

  @override
  State<Reminders> createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 15,),
            Text(
              "Medicine Reminder",
              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
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
            showYears: true,
            
          ),
        ],
      ),
    );
  }
}
