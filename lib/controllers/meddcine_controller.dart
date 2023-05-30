import 'package:get/get.dart';
import 'package:sheesh/db/db_helper.dart';

import '../models/tasks.dart';

class meddcinecontroller extends GetxController{


  @override 
  void onReady() {
    super.onReady();
    
    
  }
  var taskList = <Task>[].obs;
  Future<int> addTask({Task? task}) async{
    return await DBhelper.insert(task);
  }


  void getTasks() async {
    List<Map<String, dynamic>> tasks = await DBhelper.query();
    taskList.assignAll(tasks.map((data) => new Task.fromJson(data)).toList());

  }
}