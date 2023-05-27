import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:sheesh/Patient/homepage.dart';
import 'package:sheesh/db/db_helper.dart';
// ignore: unused_import
import 'package:sheesh/screens/login_page.dart';
import 'package:sheesh/screens/onboarding_screens.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import 'Patient/Shedule/pagemedcine.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBhelper.initDb();
  await GetStorage.init();
  runApp(const MainApp());
}
class AppController extends GetxController {
  // Add your controller logic here, if needed
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Patient(),
      initialBinding: BindingsBuilder(() {
        Get.put<AppController>(AppController());
      }),
    );
  }
}


  @override
  List<GetPage> getPages() {
    return [
      GetPage(
        name: '/',
        page: () => Patient(),
      ),
      GetPage(
        name: '/addpage',
        page: () => Addpage(),
      ),
    ];
  }


