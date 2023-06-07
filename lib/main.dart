import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sheesh/db/db_helper.dart';
import 'package:sheesh/screens/onboarding_screens.dart';


import 'Driver/homepage.dart';
import 'Patient/Shedule/pagemedcine.dart';
import 'Patient/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await DBhelper.initDb();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () =>  DriverDashboardScreen()),
        GetPage(name: '/addpage', page: () => const Addpage()),
      ],
    );
  }
}
