import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:sheesh/screens/edit_profile_screen.dart';
import 'package:sheesh/screens/featured_screen.dart';
import '../models/user.dart';
import '../utilities/user_pref.dart';
import '../widgets/button_widget.dart';

import '../widgets/circle_button.dart';
import '../widgets/profile_widget.dart';
import 'homepage.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
            Expanded(child: ScheduleScreenBody()),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 110,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [
            Color(0xFF73AEF5),
            Color(0xFF61A4F1),
            Color(0xFF478FE0),
            Color(0xFF398AE5),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainHomePage() ));}
                  , icon: Icon(Icons.arrow_back, color: Colors.white,))
             ,
              Text(
                'Appointments',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 24.0,
                ),
              ),
              CircleButton(
                icon: Icons.notifications,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class ScheduleScreenBody extends StatelessWidget {
  const ScheduleScreenBody({Key? key});

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        CalendarTimeline(
  initialDate: DateTime(2023, 5, 24),
  firstDate: DateTime(2023, 1, 1),
  lastDate: DateTime(2024, 12, 31),
  onDateSelected: (date) => print(date),
  leftMargin: 20,
  monthColor: Colors.blueGrey,
  dayColor: Color(0xFF73AEF5),
  activeDayColor: Colors.white,
  activeBackgroundDayColor: Color(0xFF398AE5),
  dotsColor: Color(0xFF398AE5),
  // selectableDayPredicate: (date) => date.day != 23,
  locale: 'en_ISO',
)
      ],
    );
  }
}