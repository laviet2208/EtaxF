import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Screen/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'final.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? name = prefs.getString('name');
  String? tax = prefs.getString('tax');
  String? diachi = prefs.getString('diachi');
  String? cqt = prefs.getString('cqt');
  String? sdt = prefs.getString('sdt');
  String? mail = prefs.getString('mail');
  if (name != null) {
    data.name = name;
  }
  if (tax != null) {
    data.code = tax;
  }
  if (diachi != null) {
    data.diachi = diachi;
  }
  if (cqt != null) {
    data.cqt = cqt;
  }
  if (sdt != null) {
    data.sdt = sdt;
  }
  if (mail != null) {
    data.email = mail;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Etax',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: LoginScreen()
    );
  }
}
