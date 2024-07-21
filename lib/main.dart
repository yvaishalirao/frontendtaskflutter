import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/course_sorting/coursearguments.dart';
import 'package:frontendtaskflutter/coursedetails.dart';
import 'package:frontendtaskflutter/IntroScreen/introscreen.dart';
import 'package:frontendtaskflutter/route.dart';

import 'CourseHomePage/coursehome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        routes: {
          RouteNames.intro :(context)=>const IntroScreen(),
          RouteNames.courseHome:(context)=>const CourseHome()

    },
      onGenerateRoute: (settings){
        if(settings.name==RouteNames.courseDetails){
          final args= settings.arguments as CourseArgument;
          return MaterialPageRoute(builder: (context)=>
              CourseDetails(course: args.course));

        }
      },
    );
  }
}

