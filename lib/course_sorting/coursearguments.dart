import 'package:flutter/material.dart';

import 'course.dart';

class CourseArgument{

  final Course _course;

  CourseArgument(this._course);

  Course get course => _course;
}