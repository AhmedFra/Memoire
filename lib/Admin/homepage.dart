import 'package:flutter/material.dart';


class DriverDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(),
      body: SingleChildScrollView(
        child:
         Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'Upcoming Appointments',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
              SizedBox(
                height: 110,
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top:10,left: 20),
                              height: 100,        
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 229, 235, 238), 
                              borderRadius: BorderRadius.circular(12),         
                              ),
                               child: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('08:00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            SizedBox(height: 5,),
                            Text('20/05/2023', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ],
                          ),
                      ),
                        
                      VerticalDivider(width:1, color: Colors.black,endIndent: 10, indent: 10, ),
                      SizedBox(width: 10,),
                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 7,),
                          Text('Dentist', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(height: 7,),
                          Text('25 rue Larbi Ben Mhidi, 31000, Oran', style: TextStyle(color: Colors.black,  fontSize: 15),),
                          SizedBox(height: 7,),
                          Row(
                          children: [
                          Text(
                          'Waiting',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.orange
                               ),
                               ),
                             
                                   ],
                            ),
                                  
                                  
                        ],
                      )
                      
                           ],
                           ),
                               ),
                    );
                  },
                ),
              ),
              Divider(
                thickness: 0.2,
            color: Colors.black,


        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                  'Urgent  Appointments',
                  style: TextStyle(
                  fontSize: 20,
                 fontWeight: FontWeight.bold,
                        ),
                      ),  
                      Container(
                      margin: EdgeInsets.only(top:10,left: 20),
                              height: 100,        
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 178, 78), 
                              borderRadius: BorderRadius.circular(12),         
                              ),
                               child: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('08:00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            SizedBox(height: 5,),
                            Text('20/05/2023', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ],
                          ),
                      ),
                        
                      VerticalDivider(width:1, color: Colors.black,endIndent: 10, indent: 10, ),
                      SizedBox(width: 10,),
                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 7,),
                          Text('Dentist', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(height: 7,),
                          Text('25 rue Larbi Ben Mhidi, 31000, Oran', style: TextStyle(color: Colors.black,  fontSize: 15),),
                          SizedBox(height: 7,),
                          Row(
                          children: [
                          Text(
                          'Ergent',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(255, 250, 14, 14)
                               ),
                               ),
                             
                                   ],
                            ),
                                  
                                  
                        ],
                      )
                      
                           ],
                           ),
                               ),
                    ),

          ],
        ),
            ],

          ),
          
      ),)
    );
  }
}
class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
@override
Size get preferredSize => const Size.fromHeight(70);

@override
Widget build(BuildContext context) {
return Container(
padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
height: preferredSize.height,
width: double.infinity,
decoration: const BoxDecoration(
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(20),
bottomRight: Radius.circular(20),
),
gradient: LinearGradient(
colors: [
Color(0xFF73AEF5),
Color(0xFF61A4F1),
Color(0xFF478FE0),
Color(0xFF398AE5),
],
begin: Alignment.topCenter,
end: Alignment.bottomCenter,
),
),
child: ListView(
shrinkWrap: true,
children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(
'Welcome!',
style: const TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
letterSpacing: 1,
fontSize: 24.0,
),
),
IconButton(
icon:Image.asset(
'assets/utilisateur.png',
width: 60,
height: 60,
// Add other properties as needed
),
onPressed: () {
// Navigate to a different page here
// Example:
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => ProfilePage()),
// );
},
),
],
),
const SizedBox(height: 20),
],
),
);
}
}