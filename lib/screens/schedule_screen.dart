import 'package:flutter/material.dart';
import 'package:sheesh/screens/schedule_screen.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final List<String> scheduleItems = [
    'Meeting with Client',
    'Lunch Break',
    'Project Discussion',
    'Team Standup',
    'Task Deadline',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
      ),
      body: ListView.builder(
        itemCount: scheduleItems.length,
        itemBuilder: (context, index) {
          final item = scheduleItems[index];
          return ListTile(
            title: Text(item),
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            trailing: IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                // Perform any action when the item is checked
              },
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ScheduleScreen(),
  ));
}