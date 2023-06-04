import 'package:flutter/material.dart';

class AppointmentManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Appointment Management',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            AppointmentCard(
              patientName: 'John Doe',
              pickupLocation: '123 Main St',
              scheduledTime: '09:00 AM',
              specialInstructions: 'Bring wheelchair',
            ),
            SizedBox(height: 16.0),
            // Add more appointment cards or use a ListView.builder for dynamic content
          ],
        ),
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final String patientName;
  final String pickupLocation;
  final String scheduledTime;
  final String specialInstructions;

  const AppointmentCard({
    required this.patientName,
    required this.pickupLocation,
    required this.scheduledTime,
    required this.specialInstructions,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Patient: $patientName',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text('Pickup Location: $pickupLocation'),
            SizedBox(height: 8.0),
            Text('Scheduled Time: $scheduledTime'),
            SizedBox(height: 8.0),
            Text('Special Instructions: $specialInstructions'),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Mark appointment as complete
                  },
                  child: Text('Mark Complete'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Update appointment status
                  },
                  child: Text('Update Status'),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              'Additional Information:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text('Additional information or notes related to the appointment.'),
          ],
        ),
      ),
    );
  }
}
