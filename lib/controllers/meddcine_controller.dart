import 'package:get/get.dart';
import 'package:sheesh/db/db_helper.dart';

import '../models/tasks.dart';

class meddcinecontroller extends GetxController{


  @override 
  void onReady() {
    super.onReady();
  }
  Future<int> addTask({Task? task}) async{
    return await DBhelper.insert(task);
  }
}