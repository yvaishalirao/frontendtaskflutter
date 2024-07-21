import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/CourseHomePage/categorycourselist.dart';
import 'package:frontendtaskflutter/CourseHomePage/categorylist.dart';
import 'package:frontendtaskflutter/CourseHomePage/course_search.dart';
import 'package:frontendtaskflutter/course_sorting/featuredcourses.dart';
import 'package:frontendtaskflutter/course_sorting/courselist.dart';
import 'package:frontendtaskflutter/CourseHomePage/header.dart';
import 'package:frontendtaskflutter/CourseHomePage/offers.dart';

import '../responsive.dart';

class CourseHome extends StatefulWidget {
  const CourseHome({super.key});

  @override
  State<CourseHome> createState() => _CourseHomeState();
}

class _CourseHomeState extends State<CourseHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Home'),
        backgroundColor: Colors.lightBlue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: Text(
                'Additional',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);

              },
            ),
            ListTile(
              leading: const Icon(Icons.account_balance_wallet_sharp),
              title: const Text('MyCourses'),
              onTap: () {
                Navigator.pop(context);

              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);

              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: ResponsiveUtils.getHeight(context, 0.25),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveUtils.getWidth(context, 0.05),
                  vertical: ResponsiveUtils.getHeight(context, 0.02),
                ),
                child: Column(
                  children: [
                    SizedBox(height: ResponsiveUtils.getHeight(context, 0.02)),
                    Header(),
                    SizedBox(height: ResponsiveUtils.getHeight(context, 0.02)),
                    CourseSearch(),
                  ],
                ),
              ),
            ),
            SizedBox(height: ResponsiveUtils.getHeight(context, 0.02)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveUtils.getWidth(context, 0.02),
              ),
              child: Column(
                children: [
                  Offers(),
                  SizedBox(height: ResponsiveUtils.getHeight(context, 0.02)),
                  // FeaturedCourses(), // Uncomment if needed
                  CategoryCourseList(),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}
