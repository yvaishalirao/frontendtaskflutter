import 'package:flutter/material.dart';
import 'package:frontendtaskflutter/course_sorting/course.dart';
import 'package:frontendtaskflutter/course_sorting/coursedataprovider.dart';
import 'package:frontendtaskflutter/courseitem.dart';

class FeaturedCourses extends StatefulWidget {
  const FeaturedCourses({super.key});

  @override
  State<FeaturedCourses> createState() => _FeaturedCoursesState();
}

class _FeaturedCoursesState extends State<FeaturedCourses> {
  @override
  Widget build(BuildContext context) {
    List<Course> featuredCourse=[
      CourseDataProvider.courseList[0],
      CourseDataProvider.courseList[1],
      CourseDataProvider.courseList[2],
      CourseDataProvider.courseList[3],

    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Featured Courses",
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
            ),
            InkWell(
              onTap: (){},
              child: Text("See All",
              style: TextStyle(color: Colors.blue,fontSize: 15),),
            ),

          ],
        ),
        SizedBox(height: 10,),

        SizedBox(height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredCourse.length,
              itemBuilder: (context,index){
              Course course=featuredCourse[index];
              return CourseItem(course: course);
              }),

        )
      ],
    );
  }
}
