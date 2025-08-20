import 'package:flutter/material.dart';
import 'package:job_app_ui/screens/job%20view/job_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Job App UI",
      debugShowCheckedModeBanner: false,
      home: JobViewPage(),
    );
  }
}
