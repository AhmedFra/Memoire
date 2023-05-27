import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'Shedule/CalendarTimeline.dart';
import 'Shedule/mybutton.dart';
import 'Shedule/pagemedcine.dart';
import 'package:get/get.dart';


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
      
      body: 

          Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 20 ,right: 20,top: 10),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                    Container(
                      
                      child: Column(
                        children: [
                          Text(DateFormat.yMMMEd().format(DateTime.now()),
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),)
                        ],
                      ),
                    ),
                    Mybutton(label:"+ Add Medcine" ,onTap:() =>Get.to(Addpage()) ),
                  ],
                ),
              ),
              CustomCalendarTimeline(),

            
            ],
          ),
       
    );
  }
}
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      height: preferredSize.height,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Medicine Reminder',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 24.0,
            ),
          ),
          // Add any other widgets or icons here
        ],
      ),
    );
  }
}
