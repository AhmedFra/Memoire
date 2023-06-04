import 'package:flutter/material.dart';

class DriverProfilePage extends StatefulWidget {
  @override
  _DriverProfilePageState createState() => _DriverProfilePageState();
}

class _DriverProfilePageState extends State<DriverProfilePage> {
  String driverName = 'John Doe';
  String driverEmail = 'johndoe@example.com';
  String driverPhone = '+1 123-456-7890';
  String driverLocation = 'New York, USA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/driver_photo.png'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(driverName),
            SizedBox(height: 10),
            Text(
              'Email:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(driverEmail),
            SizedBox(height: 10),
            Text(
              'Phone:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(driverPhone),
            SizedBox(height: 10),
            Text(
              'Location:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(driverLocation),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to edit profile page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditDriverProfilePage(
                        driverName: driverName,
                        driverEmail: driverEmail,
                        driverPhone: driverPhone,
                        driverLocation: driverLocation,
                      ),
                    ),
                  );
                },
                child: Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditDriverProfilePage extends StatefulWidget {
  final String driverName;
  final String driverEmail;
  final String driverPhone;
  final String driverLocation;

  const EditDriverProfilePage({
    required this.driverName,
    required this.driverEmail,
    required this.driverPhone,
    required this.driverLocation,
  });

  @override
  _EditDriverProfilePageState createState() => _EditDriverProfilePageState();
}

class _EditDriverProfilePageState extends State<EditDriverProfilePage> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController locationController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.driverName);
    emailController = TextEditingController(text: widget.driverEmail);
    phoneController = TextEditingController(text: widget.driverPhone);
    locationController = TextEditingController(text: widget.driverLocation);
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Phone',
              ),
            ),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                labelText: 'Location',
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Save the updated profile information
                  String updatedName = nameController.text;
                  String updatedEmail = emailController.text;
                  String updatedPhone = phoneController.text;
                  String updatedLocation = locationController.text;

                  // Perform the save operation here

                  // Go back to the profile page with the updated information
                  Navigator.pop(context);
                },
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
