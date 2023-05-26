

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sheesh/Patient/screen1.dart';
import 'package:flutter/material.dart' as FlutterMaterial;

import 'inputfield.dart';
class Addpage extends StatefulWidget {


  const Addpage({Key? key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: Container(
        padding: EdgeInsets.only(left: 20 ,right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add Meddcine",style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
              Muinput(title:"Title" ,hint:"Enter your title " ,),
              Muinput(title:"Note" ,hint:"Enter your note " ,),
              Muinput(title:"Date" ,hint:DateFormat.yMd().format(_selectedDate),
              widget: IconButton(
                icon:Icon( Icons.calendar_today_outlined ,
                color: Colors.grey,),
                onPressed:() {
                  _getDateFromUser();
                }))
            ]
          ),
        ),

      ),
    );
    
  }

  FlutterMaterial.AppBar _appbar(BuildContext context) {
    return FlutterMaterial.AppBar(
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
          
        ],
      ),
    );
  }

  _getDateFromUser() async { // Pass the context as a parameter
    DateTime? _pickerDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2017),
      lastDate: DateTime(2023),
    );
      
    // Handle the selected date
    if (_pickerDate != null) {
      setState(() {
        _selectedDate = _pickerDate;
      });
    }else{
      print("it's null or somthing is wrong ");
    }
  }
}