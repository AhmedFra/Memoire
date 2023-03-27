import 'package:flutter/material.dart';

import 'featured_screen.dart';


class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
    FeaturedScreen(),
  ];
  
  @override
   


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex)
           ), 
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF398AE5),
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.house, size: 24.0,  ),
              icon: Icon(Icons.house_outlined, size: 24.0,),
              label: 'home',
              ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.people, size: 24.0,),
              icon: Icon(Icons.people_outlined, size: 24.0, ),
              label: 'Patients' ,             
              ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.calendar_month, size: 24.0,),
              icon: Icon(Icons.calendar_month_outlined, size: 24.0,),
              label: 'Schedule' ,
              
              ),           
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.person, size: 24.0,),
              icon: Icon(Icons.person_outline, size: 24.0,),
              label: 'Profile' ,
              
              ),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),   
      ),

      );
  }
}