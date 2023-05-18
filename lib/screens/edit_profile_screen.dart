import 'dart:io';


import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sheesh/models/user.dart';
import 'package:sheesh/utilities/user_pref.dart';
import 'package:sheesh/widgets/appbar_widget.dart';
import 'package:sheesh/widgets/button_widget.dart';
import 'package:sheesh/widgets/profile_widget.dart';
import 'package:sheesh/widgets/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => 
         Builder(
          builder: (context) => Scaffold(
            appBar: buildAppBar(context),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 32),
              physics: BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  imagePath: user.imagePath,
                  isEdit: true,
                  onClicked: () async {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Full Name',
                  text: user.name,
                  onChanged: (name) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Description',
                  text: user.description,
                  maxLines: 5,
                  onChanged: (about) {},
                ),
              ],
            ),
          ),
        )
      ;
}