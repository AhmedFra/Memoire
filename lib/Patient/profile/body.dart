import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 115,
        width: 115,
        child: 
        Stack(
          fit: StackFit.expand,
          children : [ CircleAvatar
          (backgroundImage:
           AssetImage("assets/omega31.png"),),
           Positioned(
            bottom: 0,
             child: SizedBox(
              height: 46,
              width: 46,
              child: FloatingActionButton(
                
                onPressed: (){},
                child: Image.asset("assets/camera.png"),
                ),
              ),
           ),
           ]
           ),
        )
      ],
    );
  }
}