import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prevent_female_disease/pages/signup/view.dart';


Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(MyApp());
    },
    (error, stackTrace) async {
      print('runZonedGuarded: Caught error in my root zone.');
      print('error\n$error');
      print('stacktrace\n$stackTrace');
    },
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SignUpScreen(),
    );
  }
}
