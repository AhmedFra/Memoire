import 'package:flutter/material.dart';

class Addpage extends StatelessWidget {
  const Addpage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      elevation: 0,
      title: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 15,),
          Text(
            "Book Ambulance",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
