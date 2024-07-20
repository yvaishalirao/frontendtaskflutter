

import 'course.dart';
import '../coursecategory.dart';
import 'lecture.dart';
import 'section.dart';

class CourseDataProvider {

  //Section List
  static List<Section> sectionList = [
    Section("Introduction", [
      Lecture("Introduction", "01:48 mins"),
      Lecture("What is Flutter", "05:54 mins"),
      Lecture("Understanding Flutter Architecture", "04:45 mins"),
      Lecture("Flutter Alternatives", "06:10 mins"),
    ]),
    Section("Flutter Basics", [
      Lecture("Module Introduction", "02:25 mins"),
      Lecture("Creating New Project", "05:17 mins"),
      Lecture("Dart Basics", "17:20 mins"),
      Lecture("Dart Fundamentals", "11:10 mins"),
      Lecture("Flutter App Basic", "07:40 mins"),
    ]),


  ];

  //Course List
  static List<Course> courseList = [
    Course(
        "1",
        "Flutter Master class",
        "assets/images/c1.jpg",
        "This complete flutter development course from beginner to expert. Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.",
        "YVR",
        "01-Jan-2022",
        4.2,
        false,
        CourseCategory.programming,
        100,
        '2.5 Hours',
        15,
        sectionList),
    Course(
        "2",
        "Flutter with Firebase",
        "assets/images/c2.jpg",
        "Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.",
        "YVR",
        "01-Apr-2022",
        4.5,
        false,
        CourseCategory.programming,
        50,
        '3 Hours',
        10,
        sectionList),

    Course(
        "4",
        "Learn Programming Trick",
        "assets/images/c3.jpg",
        "One of the common and basic questions among students or someone who wants to learn code is “How can I learn to code fast and make a career as a programmer?”. Whether you are a student, fresher or experienced person trying to switch your job in programming you will definitely try to find tips and tricks to learn programming quickly and effectively",
        "YVR",
        "01-Jan-2022",
        4,
        false,
        CourseCategory.programming,
        40,
        '5 Hours',
        30,
        sectionList),
    Course(
        "6",
        "Learn Marketing",
        "assets/images/c4.jpg",
        "This is complete marketing master class. In this course, you will learn how to increase sales, approach new clients.",
        "YVR",
        "01-MAR-2022",
        4.2,
        false,
        CourseCategory.marketing,
        150,
        '4 Hours',
        20,
        sectionList),


  ];
}
