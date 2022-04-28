import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kurslar_ui/screens/homepage.dart';
import 'package:kurslar_ui/screens/loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoaderPage(),
    );
  }
}
