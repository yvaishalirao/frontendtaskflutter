import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/course_sorting/categorychange.dart';
import 'package:frontendtaskflutter/course_sorting/coursedataprovider.dart';
import 'package:frontendtaskflutter/course_sorting/coursecategory.dart';
import 'package:frontendtaskflutter/CourseHomePage/courseitem.dart';
import 'package:provider/provider.dart';

import 'course.dart';
class CourseList extends StatefulWidget {
  const CourseList({super.key});

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
      shrinkWrap: true,
      physics:const ScrollPhysics() ,
        childAspectRatio: 1 / 1.2,
      children: getCourseList(context).map((course){
        return CourseItem(course: course);
        } ).toList(),
    );
  }

  List<Course> getCourseList(BuildContext context){

    var category=Provider.of<CategoryChange>(context).category;
    if(category==CourseCategory.all){
      return CourseDataProvider.courseList;
    }
    return CourseDataProvider.courseList.where((course) =>
    course.courseCategory == category).toList();
  }
}
