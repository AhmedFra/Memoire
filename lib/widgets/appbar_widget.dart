
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sheesh/utilities/user_pref.dart';

AppBar buildAppBar(BuildContext context) {


  return AppBar(
    leading: BackButton(
      color: Colors.blue,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
      icon: Icon(
        Icons.save,
        color: Colors.blue,
      ),
      onPressed: () {
        // do something
      },
    )
    
    ],
  );
}