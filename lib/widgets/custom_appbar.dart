import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:Color(0xFF478FE0),   
      elevation: 0.0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        iconSize: 28.0,
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications_none),
          iconSize: 28.0,
          onPressed: () {},
        ),
      ],
    );
    
  }
  
  @override
 
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}