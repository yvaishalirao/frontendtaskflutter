import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/categorylist.dart';
import 'package:frontendtaskflutter/course_search.dart';
import 'package:frontendtaskflutter/course_sorting/featuredcourses.dart';
import 'package:frontendtaskflutter/header.dart';
import 'package:frontendtaskflutter/offers.dart';

class CourseHome extends StatefulWidget {
  const CourseHome({super.key});

  @override
  State<CourseHome> createState() => _CourseHomeState();
}

class _CourseHomeState extends State<CourseHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Header(),
                    SizedBox(height: 10),
                    CourseSearch(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Offers(),
                  SizedBox(height: 10), // Adding spacing between Offers and FeaturedCourses
                  FeaturedCourses(),
                  CategoryList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
