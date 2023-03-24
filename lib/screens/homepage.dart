import 'package:flutter/material.dart';


class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
   
int _currentIndex = 0;
  final List<Widget> _children = [
    Container(color: Colors.white,
          child: Center(child: Text('Home and what not '),),), 
             Container(color: Colors.white,
             child: Center(child: Text('Schedule'),),),
                 Container(color: Colors.white,
                 child: Center(child: Text('Profile'),),),];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(
        title: Text('Homecare'),
         backgroundColor:Color(0xFF478FE0),   
      elevation: 5.0,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications_none),
          iconSize: 28.0,
          onPressed: () {},
        ),
      ],
      ),
      drawer: Drawer(
        
        child: ListView(
          
          padding: EdgeInsets.zero,
          children: <Widget>[
            
              UserAccountsDrawerHeader(
              decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
               Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF478FE0),
                  Color(0xFF398AE5),
              ],
            ) ),     
              accountName: Text('Ziada Oussama Yacine'),
              accountEmail: Text('zoy@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'ZOY',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            
            ListTile(
              
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Update the UI based on the option selected
              },
            ),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Update the UI based on the option selected
              },
            ),
          ],
        ),
      ),
        body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label:'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:'Profile',
          ),
        ],
      ),
      ),

      );
  }
}