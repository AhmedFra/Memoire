import 'package:flutter/material.dart';

import '../screen1.dart';

class AppointmentPage extends StatelessWidget {
  final SpecialistItem specialistItem;

  AppointmentPage({required this.specialistItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Select Date and Time",
            style: TextStyle(fontSize: 24),
          ),
          // Add your date and time selection widgets here
          ElevatedButton(
            onPressed: () {
              // Add your appointment submission logic here
            },
            child: Text("Request Appointment"),
          ),
        ],
      ),
    );
  }
}
