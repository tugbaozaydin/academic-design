import 'package:education_design/events.dart';
import 'package:education_design/lessons_schedule.dart';
import 'package:education_design/screens/academic%20_status.dart';
import 'package:education_design/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'screens/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Education APP',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          appBarTheme: AppBarTheme(
              color: Colors.white,
              iconTheme: IconThemeData(color: Colors.white),
              textTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
        ),),
        home: Dashboard(),
        routes: {
          "/dashboard": (context) => Dashboard(),
          "/academic_status": (context) => AcademicStatus(),
          "/settings": (context) => Settings(),
          "/lessons_schedule": (context) => LessonsSchedule(),
          "/events": (context) => Events(),
        });
  }
}
