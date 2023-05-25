import 'package:flutter/material.dart';

class SymptomTrackingPage extends StatefulWidget {
  @override
  _SymptomTrackingPageState createState() => _SymptomTrackingPageState();
}

class _SymptomTrackingPageState extends State<SymptomTrackingPage> {
  String? painLevel;
  String mood = '';
  String sleepPattern = '';

  void saveSymptoms() {
    // Implement the logic to save the symptoms data
    print('Pain Level: $painLevel');
    print('Mood: $mood');
    print('Sleep Pattern: $sleepPattern');
    // You can customize this method to store the data in a database or send it to a server.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptom Tracking'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pain Level',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            DropdownButton<String>(
              value: painLevel,
              onChanged: (newValue) {
                setState(() {
                  painLevel = newValue;
                });
              },
              items: [
                DropdownMenuItem<String>(
                  value: 'Low',
                  child: Text('Low'),
                ),
                DropdownMenuItem<String>(
                  value: 'Medium',
                  child: Text('Medium'),
                ),
                DropdownMenuItem<String>(
                  value: 'High',
                  child: Text('High'),
                ),
              ],
              hint: Text('Select Pain Level'),
              isExpanded: true,
              underline: Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Mood',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              onChanged: (newValue) {
                setState(() {
                  mood = newValue;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Mood',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Sleep Pattern',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              onChanged: (newValue) {
                setState(() {
                  sleepPattern = newValue;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Sleep Pattern',
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: saveSymptoms,
              child: Text('Save Symptoms'),
            ),
          ],
        ),
      ),
    );
  }
}
