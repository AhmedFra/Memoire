import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sheesh/screens/edit_profile_screen.dart';
import '../models/user.dart';
import '../utilities/user_pref.dart';
import '../widgets/button_widget.dart';

import '../widgets/profile_widget.dart';
import 'homepage.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
     final user = UserPreferences.myUser;

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 24),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {}, isEdit: false, 
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 10),
          Center(child: buildEditButton()),
          const SizedBox(height: 24),      
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

 Widget buildEditButton() => ButtonWidget(
        text: 'Edit info',
        onClicked: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context) => EditProfilePage()));
        },
      );

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );


  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.description,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
  }
