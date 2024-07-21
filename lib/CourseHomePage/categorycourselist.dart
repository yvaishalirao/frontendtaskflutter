import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/CourseHomePage/categorylist.dart';
import 'package:frontendtaskflutter/course_sorting/categorychange.dart';
import 'package:frontendtaskflutter/course_sorting/coursecategory.dart';
import 'package:provider/provider.dart';

import '../course_sorting/courselist.dart';

class CategoryCourseList extends StatefulWidget {
  const CategoryCourseList({super.key});

  @override
  State<CategoryCourseList> createState() => _CategoryCourseListState();
}

class _CategoryCourseListState extends State<CategoryCourseList> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context)=>CategoryChange(),
    child: Column(
      children: [
        CategoryList(),
        SizedBox(height: 10,),
        CourseList(),
      ],
    ),);
  }
}
