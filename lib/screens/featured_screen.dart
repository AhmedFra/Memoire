

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/circle_button.dart';
import '../widgets/search_text_field.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({super.key});

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            AppBar()

          ],
        ),
      )
      );
  }
}


class AppBar extends StatefulWidget {
  const AppBar({super.key});

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 210,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        gradient: LinearGradient(colors: [        
           Color(0xFF73AEF5),
           Color(0xFF61A4F1),
           Color(0xFF478FE0),
           Color(0xFF398AE5),],
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           )      
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome,\nUsername !',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 24.0,              
              ), 
              ),
              CircleButton(
                icon: Icons.notifications,
                onPressed: () {  },
              ),             
            ],
          ),
          const SizedBox(height: 20,),
          const SearchTextField(),

        ],
      ),
    );
  }
}